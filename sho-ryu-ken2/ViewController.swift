//
//  ViewController.swift
//  sho-ryu-ken2
//
//  Created by 菊地雄飛 on 2019/06/05.
//  Copyright © 2019 菊地雄飛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 昇竜拳画像の格納配列
       var imageArray : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shoryuken.image = UIImage(named:"attak1") //初期画面用

        while let attackImage = UIImage(named: "attak\(imageArray.count+1)") {
            imageArray.append(attackImage)
        }
    }
    
 
    @IBOutlet weak var shoryuken: UIImageView!
    
    @IBAction func startButton(_ sender: UIButton) {
        // アニメーションの適用
        shoryuken.animationImages = imageArray
        // アニメーションの長さ:2秒
        shoryuken.animationDuration = 2
        // アニメーション再生回数:1回
        shoryuken.animationRepeatCount = 1
        // アニメーションを開始
        shoryuken.startAnimating()
        
        //2秒後に実行したい処理  勝利宣言  遊びです
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//            
//        }
        //1秒後にタイトルに戻る
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
        }
        
}

}
