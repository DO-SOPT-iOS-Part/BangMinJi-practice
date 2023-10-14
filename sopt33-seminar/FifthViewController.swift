//
//  FifthViewController.swift
//  sopt33-seminar
//
//  Created by 방민지 on 2023/10/14.
//

import UIKit

class FifthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
   
    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)])
        
        NSLayoutConstraint.activate([contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
                                     contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
                                     contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
                                     contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
                                     contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)])
        
        
        
        
        [leftStackView, rightStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([leftStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                                     leftStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
                                     leftStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
                                     leftStackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2)])
        
        NSLayoutConstraint.activate([rightStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                                     rightStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
                                     rightStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
                                     rightStackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2)])
        
        [yellowView, blackView].forEach {
            NSLayoutConstraint.activate([$0.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2),
                                         $0.heightAnchor.constraint(equalToConstant: 600)])
            $0.translatesAutoresizingMaskIntoConstraints = false
            leftStackView.addArrangedSubview($0)
            
            
            [greenView, blueView].forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([$0.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2),
                                             $0.heightAnchor.constraint(equalToConstant: 600)])
                rightStackView.addArrangedSubview($0)
            }
        }
    }
    
    private var rightStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    }()
    
    private var leftStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    }()

    
    
    private var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private var yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.contentInsetAdjustmentBehavior = .never
        return scrollView
    }()
    private var contentView = UIView()
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
