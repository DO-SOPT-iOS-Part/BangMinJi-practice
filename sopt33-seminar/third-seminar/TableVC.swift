//
//  tableView.swift
//  sopt33-seminar
//

//  Created by 방민지 on 10/28/23.
//

import UIKit


class TableVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        setLayout()
        setTableViewConfig()
    }
    
    private let tableView = UITableView(frame: .zero, style: .plain).then {
        $0.backgroundColor = .init(red: 33.0 / 255.0,
                                   green: 33.0 / 255.0,
                                   blue: 33.0 / 255.0,
                                   alpha: 1.0)
        $0.separatorColor = .lightGray
        $0.separatorStyle = .singleLine
    }
    
    private func setLayout() {
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func setTableViewConfig() {
            self.tableView.register(TableViewCell.self,
                                    forCellReuseIdentifier: TableViewCell.identifier)
            self.tableView.delegate = self
            self.tableView.dataSource = self
        }
    
}


extension TableVC: UITableViewDelegate {}
extension TableVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemListData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier,
                                                       for: indexPath) as? TableViewCell else {return UITableViewCell()}
        cell.likeTapCompletion = { state in
//                    guard let self else {return}
                    itemListData[indexPath.row].isLike = state
                }
        cell.bindData(data: itemListData[indexPath.row])
        return cell
    }
    
}
