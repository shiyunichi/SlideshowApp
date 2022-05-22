//
//  NextViewController.swift
//  SlideshowApp
//
//  Created by Shunichi Nukaga on 2022/05/21.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var nextviewImage: UIImageView!
    
    var image: UIImage?
    var displyImageNo = 0
    
    
    @IBAction func backButton(_ sender: Any) {
    //ViewController自身を破棄
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       displayImage()
    }
    
    func displayImage(){
        
        let imageNameArray = [
            "ajisai",
            "kaeru",
            "katatumuri",
            "teruteru",
            "niji"
            ]
        
        //画像の番号が正常な範囲を指しているかチェック
        
        //範囲より下を指している場合、最後の画像を表示
        if displyImageNo < 0{
            
            displyImageNo = 4
        }
        
        //範囲より上を指している場合、最初の画像を表示
        if displyImageNo > 4{
            
            displyImageNo = 0
        }
        
        let name = imageNameArray[displyImageNo]
        
        let image = UIImage(named: name)
        
        nextviewImage.image = image
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
