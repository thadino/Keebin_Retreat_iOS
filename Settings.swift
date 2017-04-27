//
//  Settings.swift
//  Keebin_development_1
//
//  Created by sr on 27/03/2017.
//  Copyright © 2017 Keebin. All rights reserved.
//

import UIKit

class Settings: UIViewController {

    @IBAction func buy(_ sender: Any) {
        

        
    }
    @IBOutlet weak var email: UIButton!

    @IBOutlet weak var textarea: UITextView!
    @IBOutlet weak var aboutme: UIButton!
    @IBOutlet weak var password: UIButton!
    override func viewDidLoad() {
        //  Converted with Swiftify v1.0.6325 - https://objectivec2swift.com/
        let payment = MobilePayPayment(orderId: "123456", productPrice: 10.0)
        //No need to start a payment if one or more parameters are missing
        if (payment != nil) && ((payment?.orderId.characters.count)! > 0) && ((payment?.productPrice)! >= 0) {
            try? MobilePayManager.sharedInstance().beginMobilePayment(with: payment!, error: { (Error) in
                print(Error)
            })
        }

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        email.layer.cornerRadius = 10;
        email.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
  
 
        
        aboutme.layer.cornerRadius = 10;
        aboutme.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        password.layer.cornerRadius = 10;
        password.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
