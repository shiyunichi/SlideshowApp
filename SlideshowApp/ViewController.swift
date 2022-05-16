//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Shunichi Nukaga on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "ajisai")
        
        imageView.image = image
    }


}

