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
    
    
    
    @IBAction func backButton(_ sender: Any) {
    //ViewController自身を破棄
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //遷移元の画像をimageViewにセットする。
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
