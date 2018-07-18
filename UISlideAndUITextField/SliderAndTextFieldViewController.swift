//
//  SliderAndTextFieldViewController.swift
//  UISlideAndUITextField
//
//  Created by 林哲右 on 2018/7/17.
//  Copyright © 2018年 UISlideAndUITextField. All rights reserved.
//

import UIKit

class SliderAndTextFieldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var text: UITextField!
    
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        let numSize = String(format: "%.2f", sender.value)
        size.text = "文字大小：\(numSize)"
        let font = text.font!
        let newFont = font.withSize(CGFloat(sender.value))
        text.font = newFont
        var recv:CGRect = text.frame
        recv.size.height = CGFloat(sender.value+2.00)
        text.frame = recv
        
    }
    @IBAction func textChange(_ sender: UITextField) {
        var fontCount : Int
        if(sender.text != nil){
           fontCount = sender.text!.count
        }else{
            fontCount = 0
        }
         count.text = "字數：\(fontCount)"
    }
    
    @IBAction func closeKeyBoard(_ sender: Any) {
        view.endEditing(true)
    }
}
