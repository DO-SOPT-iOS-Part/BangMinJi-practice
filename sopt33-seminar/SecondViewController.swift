//
//  SecondViewController.swift
//  sopt33-seminar
//
//  Created by 방민지 on 2023/10/14.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setLayout()

        // Do any additional setup after loading the view.
    }
    private func setStyle(){
        self.view.backgroundColor = .white
    }
    private func setLayout(){
        [badukEgg1, badukEgg2, defenseView ].forEach { [weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        NSLayoutConstraint.activate([badukEgg1.topAnchor.constraint(equalTo: self.view.topAnchor, constant : 10),
                                     badukEgg1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant : 10),
                                     badukEgg1.widthAnchor.constraint(equalToConstant: 20),
                                     badukEgg1.heightAnchor.constraint(equalToConstant: 20)])
        NSLayoutConstraint.activate([badukEgg2.topAnchor.constraint(equalTo: self.badukEgg1.bottomAnchor, constant:  40),
                                     badukEgg2.leadingAnchor.constraint(equalTo: self.badukEgg1.trailingAnchor, constant: 40),
                                     badukEgg2.widthAnchor.constraint(equalToConstant:  20), badukEgg2.heightAnchor.constraint(equalToConstant: 20)])
        NSLayoutConstraint.activate([defenseView.topAnchor.constraint(equalTo: self.badukEgg2.bottomAnchor, constant: 20),
                                     defenseView.leadingAnchor.constraint(equalTo: self.badukEgg2.trailingAnchor, constant: 20),
                                     defenseView.widthAnchor.constraint(equalToConstant: 120),
                                     defenseView.heightAnchor.constraint(equalToConstant: 20)])
    }
    
   
    
    var badukEgg1: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 20, height:20)))
        
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    } ()
    
    var badukEgg2: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 20, height:20)))
        
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    } ()
    
    var defenseView: UIView = {
           let view = UIView(frame: .init(origin: .zero, size: .init(width: 20, height: 120)))
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
