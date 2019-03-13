//
//  ThirdViewController.swift
//  Test
//
//  Created by SHILEI CUI on 3/8/19.
//  Copyright © 2019 scui5. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {


    var startVal : String?
    
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ThirdViewController"
        lbl.text = startVal
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController{
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
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
