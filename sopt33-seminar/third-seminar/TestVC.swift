//
//  TestVC.swift
//  sopt33-seminar
//
//  Created by 방민지 on 10/28/23.
//

import UIKit
import SnapKit
import Then

class TestVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(blueView)
        
        blueView.snp.makeConstraints {
            $0.edges.equalToSuperview().offset(100)
        }
    }
    let blueView = UIView().then {
        $0.backgroundColor = .systemBlue
    }
}
