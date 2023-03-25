//
//  ViewController.swift
//  HavaDurumuUygulamasi
//
//  Created by ELANUR KIZILAY on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.layer.cornerRadius = 8
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }


    @IBAction func btn(_ sender: UIButton) {
        
        
        
        let city = textField.text ?? ""
                
                if city.isEmpty {
                    
                    let alert = UIAlertController(title: "UYARI!", message: "Lütfen şehir adı giriniz.", preferredStyle: .alert)
                    
                    let cancelButton = UIAlertAction(title: "Geri", style: .cancel, handler: nil)
                    
                    alert.addAction(cancelButton)
                    
                    self.present(alert, animated: true, completion: nil)
                    
                }else {
                    
                    let vc = self.storyboard?.instantiateViewController(identifier: "toDetail") as! DetailViewController
                    
                    vc.city = city
                    
                    self.show(vc, sender: nil)
                    
                }
    }
}

