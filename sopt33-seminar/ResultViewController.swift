//
//  ResultViewController.swift
//  sopt33-seminar
//
//  Created by 방민지 on 2023/10/07.
//

import UIKit

class ResultViewController: UIViewController {
    var loginDataCompletion: (([String]) -> Void)?
                              
    private var email: String = ""
    private var password: String = ""
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

    @IBOutlet weak var mySwitch: UISwitch!

    
    var delegate: GetDataProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindText()
    }
    
    private func bindText() {
        self.idLabel.text = "email : \(email)"
        self.passwordLabel.text = "password : \(password)"
    }
    
    func setLabelText(id: String, password: String) {
        self.email = id
        self.password = password
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }
        delegate?.getLoginData(email: self.email,
                                       password: self.password)
        
        guard let loginDataCompletion else {return}
        loginDataCompletion([self.email, self.password])
    }
    
    @IBAction func switchToggle(_ sender: UISwitch) {
        if sender.isOn {
                self.view.backgroundColor = UIColor.white
            } else {
                self.view.backgroundColor = UIColor.brown
            }
    }
    
    
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
