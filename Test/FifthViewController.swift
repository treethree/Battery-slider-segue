//
//  FifthViewController.swift
//  Test
//
//  Created by SHILEI CUI on 3/12/19.
//  Copyright © 2019 scui5. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderBtn(_ sender: UISlider) {
        sender.value =  round(sender.value / 1) * 1
        imageView1.image = UIImage(named: String(Int(sender.value)) + ".png")
        switch Int(sender.value){
        case 3:
            imageView2.image = UIImage(named: "graph3.png")
        case 6:
            imageView2.image = UIImage(named: "graph6.png")
        case 9:
            imageView2.image = UIImage(named: "graph9.png")
        default:
            return
        }
    }
    
    @IBAction func stepperBtn(_ sender: UIStepper) {
        sliderOutlet.value = Float(sender.value)
        imageView1.image = UIImage(named: String(Int(sender.value)) + ".png")
        switch Int(sender.value){
        case 3:
            imageView2.image = UIImage(named: "graph3.png")
        case 6:
            imageView2.image = UIImage(named: "graph6.png")
        case 9:
            imageView2.image = UIImage(named: "graph9.png")
        default:
            return
        }
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        sliderOutlet.value -= 1
        imageView1.image = UIImage(named: String(Int(sliderOutlet.value)) + ".png")
        switch Int(sliderOutlet.value){
        case 3:
            imageView2.image = UIImage(named: "graph3.png")
        case 6:
            imageView2.image = UIImage(named: "graph6.png")
        case 9:
            imageView2.image = UIImage(named: "graph9.png")
        default:
            return
        }
        
    }
    @IBAction func btn2(_ sender: UIButton) {
        sliderOutlet.value += 1
        imageView1.image = UIImage(named: String(Int(sliderOutlet.value)) + ".png")
        switch Int(sliderOutlet.value){
        case 3:
            imageView2.image = UIImage(named: "graph3.png")
        case 6:
            imageView2.image = UIImage(named: "graph6.png")
        case 9:
            imageView2.image = UIImage(named: "graph9.png")
        default:
            return
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
