//
//  ViewController.swift
//  Test
//
//  Created by SHILEI CUI on 3/8/19.
//  Copyright © 2019 scui5. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FirstViewController"
        //setupbarbtn()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    func setupbarbtn(){
//        let editbtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(btnEditAction))
//        navigationItem.leftBarButtonItem = editbtn
//
//        let addbtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(btnAddAction))
//        navigationItem.rightBarButtonItem = editbtn
//    }
//
//    @objc func btnEditAction(sender : UIBarButtonItem){
//
//    }
//    @objc func btnAddAction(sender : UIBarButtonItem){
//
//    }
    
//    @IBAction func btnEditAction(_ sender: Any) {
//        if let controller = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController{
//            controller.startVal = "Edit"
//            navigationController?.pushViewController(controller, animated: true)
//        }
//    }
//
//
//    @IBAction func btnAddAction(_ sender: Any) {
//        if let controller = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController{
//            controller.startVal = "Add"
//            navigationController?.pushViewController(controller, animated: true)
//        }
//    }
    
    
    @IBAction func checkBtn(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        if let value = Int(sender.value) as? Int{
            if value % 3 == 0{
                imageOutlet.image = UIImage (named: "bw.jepg")
            }else if value % 3 == 1{
                imageOutlet.image = UIImage (named: "ca.jepg")
            }else{
                imageOutlet.image = UIImage (named: "hulk.jepg")
            }
        }
    }
    
    @IBAction func switchBtn(_ sender: UISwitch) {
        if sender.isOn{
           imageOutlet.image = UIImage (named: "ca.jepg")
        }
        else{
           imageOutlet.image = UIImage (named: "bw.jepg")
        }

    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            imageOutlet.image = UIImage (named: "ca.jepg")
        }else if sender.selectedSegmentIndex == 1{
            imageOutlet.image = UIImage (named: "bw.jepg")
        }else{
            imageOutlet.image = UIImage (named: "hulk.jepg")
        }
        
        
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        // using navigation controller to get to next viewController
        if let controller = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            //navigationController?.pushViewController(controller, animated: true)
            present(controller, animated: true, completion: nil)
            
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    // this is place to set value to other viewController using storyboard
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let controller = segue.destination as? ThirdViewController{
            if segue.identifier == "edit"{
                controller.startVal = "Edit"
            }else{
                controller.startVal = "Add"
            }
        }
    }
}

