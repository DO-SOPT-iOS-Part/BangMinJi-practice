//
//  CollectionVC.swift
//  sopt33-seminar
//
//  Created by 방민지 on 10/28/23.
//

import UIKit
import Then
import SnapKit

class CollectionVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        setCollectionViewConfig()
        setCollectionViewLayout()
    }
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
        $0.backgroundColor = .black
    }
    
    private func setLayout() {
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func setCollectionViewConfig() {
            self.collectionView.register(CollectionViewCell.self,
                                         forCellWithReuseIdentifier: CollectionViewCell.identifier)
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
        }
    
    private func setCollectionViewLayout() {
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 6) / 3 , height: (UIScreen.main.bounds.width - 6) / 3)
            flowLayout.minimumLineSpacing = 3
            flowLayout.minimumInteritemSpacing = 3
            self.collectionView.setCollectionViewLayout(flowLayout, animated: false)
        }
    
}



extension CollectionVC: UICollectionViewDelegate {}
extension CollectionVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageCollectionList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier,
                                                                for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
            item.delegate = self
            item.bindData(data: imageCollectionList[indexPath.row])
            return item
        }
}

extension CollectionVC: ItemSelectedProtocol {
    func getButtonState(state: Bool, row: Int) {
        imageCollectionList[row].isLiked = state
    }
}

