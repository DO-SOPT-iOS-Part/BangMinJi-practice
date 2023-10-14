//
//  FourthViewController.swift
//  sopt33-seminar
//
//  Created by 방민지 on 2023/10/14.
//

import UIKit

class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout(){
        self.view.addSubview(stackView1)
        self.view.addSubview(stackView2)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([stackView1.topAnchor.constraint(equalTo: view.topAnchor),
                                     stackView1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     stackView1.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2)])
        NSLayoutConstraint.activate([stackView2.topAnchor.constraint(equalTo: view.topAnchor),
                                     stackView2.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     stackView2.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
        
        [yellowView, emptyView_3, blackView, emptyView_4].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            stackView1.addArrangedSubview($0)
        }
        [emptyView_1, greenView, emptyView_2, blueView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            stackView2.addArrangedSubview($0)
        }
    }
    
    private var stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    }()
    
    private var stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    }()
    
    private var yellowView: UIView = {
       let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private var emptyView_1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    private var emptyView_2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private var emptyView_3: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private var emptyView_4: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private var greenView: UIView = {
       let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private var blackView: UIView = {
       let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private var blueView: UIView = {
       let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
