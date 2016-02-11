//
//  ViewController.swift
//  chapter6
//
//  Created by 森崎 雅之 on 2016/02/11.
//  Copyright © 2016年 森崎 雅之. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!

    // ランダム値のRGB
    let randomSource = GKARC4RandomSource()
    var colorR = 0
    var colorG = 0
    var colorB = 0
    
    override func viewWillAppear(animated: Bool) {
        colorR = randomSource.nextIntWithUpperBound(256)
        colorG = randomSource.nextIntWithUpperBound(256)
        colorB = randomSource.nextIntWithUpperBound(256)
        
        colorLabel.text = "R:\(colorR) G:\(colorG) B:\(colorB)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func  returnTop(segue: UIStoryboardSegue) {
        
    }
}

