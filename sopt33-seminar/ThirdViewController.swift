//
//  ThirdViewController.swift
//  sopt33-seminar
//
//  Created by 방민지 on 2023/10/14.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setLayout()

    }
    private func setStyle(){
        self.view.backgroundColor = .white
    }
    
    private  func setLayout(){
        [yellowView, greenView, blackView, blueView].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        NSLayoutConstraint.activate([yellowView.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     yellowView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     yellowView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     yellowView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)]
        )
        NSLayoutConstraint.activate([greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
                                     greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor),
                                     greenView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     greenView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)]
        )
        NSLayoutConstraint.activate([blackView.topAnchor.constraint(equalTo: greenView.bottomAnchor),
                                     blackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     blackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     blackView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)]
        )
        
        NSLayoutConstraint.activate([blueView.topAnchor.constraint(equalTo: self.blackView.bottomAnchor),
                                     blueView.leadingAnchor.constraint(equalTo: self.blackView.trailingAnchor),
                                     blueView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     blueView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)]
        )
    }
    
    private var yellowView: UIView = {
       let view = UIView()
        view.backgroundColor = .yellow
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


/*override func viewDidLoad() {
 super.viewDidLoad()
 self.view.backgroundColor = .white
 self.view.addSubview(redView)
 
 print("frame: \(self.redView.frame) \nbounds: \(self.redView.bounds)")
}

private var redView: UIView = {
 var view = UIView(frame: .init(origin: .init(x: 100, y: 100),
                                size: .init(width: 100, height: 100)))
 view.backgroundColor = .red
 return view
}()*/
