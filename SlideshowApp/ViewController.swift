//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Shunichi Nukaga on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var displyImageNo = 0
    
    @IBAction func onPrev(_ sender: Any) {
        displyImageNo -= 1
        
        displayImageNo()
    }
    
    
    @IBAction func onForw(_ sender: Any) {
        displyImageNo += 1
        
        displayImageNo()
    }
    
    func displayImageNo(){
        
        let imageNameArray = [
            "ajisai",
            "kaeru",
            "teruteru",
            ]
        
        //画像の番号が正常な範囲を指しているかチェック
        
        //範囲より下を指している場合、最後の画像を表示
        if displyImageNo < 0{
            
            displyImageNo = 2
        }
        
        //範囲より上を指している場合、最初の画像を表示
        if displyImageNo > 2{
            
            displyImageNo = 0
        }
        
        let name = imageNameArray[displyImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "ajisai")
        
        imageView.image = image
    }

    
    
    
}

