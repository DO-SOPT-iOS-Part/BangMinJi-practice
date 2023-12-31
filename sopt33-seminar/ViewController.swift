//
//  ViewController.swift
//  sopt33-seminar
//
//  Created by 방민지 on 2023/10/07.
//

import UIKit

class ViewController: UIViewController {

    private var idText: String = ""
    private var passwordText: String = ""
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var loginButton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func idTextfieldEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else { return }
        if let idText = textField.text {
            self.idText = idText
        }
    }
    
    @IBAction func passwordTextfieldEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else { return }
        if let passwordText = textField.text {
            self.passwordText = passwordText
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
          pushToResultVC()
    }
    
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else {return}
        resultVC.setLabelText(id: self.idText,
                              password: self.passwordText)
        resultVC.delegate = self
        self.navigationController?.pushViewController(resultVC, animated: true)
        resultVC.loginDataCompletion = { data in
            print("클로저로 받아온 email : \(data[0]), 클로저로 받아온 password : \(data[1])")
        }
    }
}

extension ViewController: GetDataProtocol {
    func getLoginData(email: String, password: String) {
        print("받아온 email : \(email), 받아온 password : \(password)")
    }
}
