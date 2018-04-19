//
//  colorViewController.swift
//  A315改顏色作業
//
//  Created by 范博勝 on 2018/4/20.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit

class colorViewController: UIViewController {
    //三個slider、圖片、switch的outlet
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var eggphoto: UIImageView!
    
    @IBOutlet weak var colorswitch: UISwitch!
    //拉動滑桿的反應
    @IBAction func colorSliderChange(_ sender: Any) {
        
        eggphoto.backgroundColor = UIColor(red:
            CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:
            CGFloat(blueSlider.value), alpha: 1)
    }
    
    //按switch的反應
    @IBAction func colorSwitchChange(_ sender: Any) {
        //switch關閉時不能拉滑桿
        if colorswitch.isOn == false {
            redSlider.isEnabled = false
            greenSlider.isEnabled = false
            blueSlider.isEnabled = false
        }
        else{
            redSlider.isEnabled = true
            greenSlider.isEnabled = true
            blueSlider.isEnabled = true
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
