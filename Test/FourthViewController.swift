//
//  FourthViewController.swift
//  Test
//
//  Created by SHILEI CUI on 3/8/19.
//  Copyright © 2019 scui5. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FourthViewController"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backbtn(_ sender: UIButton) {
        //navigationController?.popViewController(animated: true)
        navigationController?.popToRootViewController(animated: true)
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
