//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Shunichi Nukaga on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    
    //表示する画像番号を宣言し０を代入
    var displyImageNo = 0
    
    //スライドショーに使用するタイマーを宣言
    var timer: Timer!
    
    
    @IBAction func onPrev(_ sender: Any) {
        //スライドショーが再生中かどうか判定
        if (timer == nil){
        //表示している画像番号を１減らす
        displyImageNo -= 1
        
        //表示している画像番号を元に画像を表示する
        displayImage()
        }
        
    }
    
    
    @IBAction func onForw(_ sender: Any) {
        //スライドショーが再生中かどうか判定
        if (timer == nil){
        //表示している画像番号を１増やす
        displyImageNo += 1
        
        //表示している画像番号を元に画像を表示する
        displayImage()
        }
    }
    
    @IBAction func onStart(_ sender: Any) {
    
        //再生中か停止しているかを判定
        if (timer == nil){
            //再生の処理を実装
            
            //タイマーをセットする
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            //ボタンの名前を変更する
            startButton.setTitle("Stop", for: .normal)
            //ボタンの色を変更する
            startButton.setTitleColor(UIColor.systemRed, for: .normal)
            
        }else{
            //停止の処理を実装
            //タイマーを停止する
            timer.invalidate()
            
            //タイマーを削除しておく
            timer = nil
            
            //ボタンの名前を再生に直す
            startButton.setTitle("Start", for: .normal)
            //ボタンの色を元に戻す。
            startButton.setTitleColor(UIColor.systemBlue, for: .normal)
            
        }
    }
    
    @objc func changeImage(){
        
        //表示している画像番号を１増やす
        displyImageNo += 1
        
       //表示している画像番号を元に画像を表示する
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
        
        imageView.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "ajisai")
        
        imageView.image = image
    }

    
    
    
}

