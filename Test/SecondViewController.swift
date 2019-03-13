//
//  SecondViewController.swift
//  Test
//
//  Created by SHILEI CUI on 3/8/19.
//  Copyright © 2019 scui5. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondViewController"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController{
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        //navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
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
