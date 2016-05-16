//
//  GameSceneViewController.swift
//  MatchingGame
//
//  Created by 刘孟轩 on 16/5/13.
//  Copyright © 2016年 刘孟轩. All rights reserved.
//

import Foundation
import UIKit

class GameSceneViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button18: UIButton!
    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    @IBOutlet weak var button23: UIButton!
    @IBOutlet weak var button24: UIButton!
    @IBOutlet weak var button25: UIButton!
    @IBOutlet weak var button26: UIButton!
    @IBOutlet weak var button27: UIButton!
    @IBOutlet weak var button28: UIButton!
    @IBOutlet weak var button29: UIButton!
    @IBOutlet weak var button30: UIButton!
    
    
    var picture:NSArray = [
        UIImage(named: "icon01.png")!,
        UIImage(named: "icon01.png")!,
        UIImage(named: "icon02.png")!,
        UIImage(named: "icon02.png")!,
        UIImage(named: "icon03.png")!,
        UIImage(named: "icon03.png")!,
        UIImage(named: "icon04.png")!,
        UIImage(named: "icon04.png")!,
        UIImage(named: "icon05.png")!,
        UIImage(named: "icon05.png")!,
        UIImage(named: "icon06.png")!,
        UIImage(named: "icon06.png")!,
        UIImage(named: "icon07.png")!,
        UIImage(named: "icon07.png")!,
        UIImage(named: "icon08.png")!,
        UIImage(named: "icon08.png")!,
        UIImage(named: "icon09.png")!,
        UIImage(named: "icon09.png")!,
        UIImage(named: "icon10.png")!,
        UIImage(named: "icon10.png")!,
        UIImage(named: "icon11.png")!,
        UIImage(named: "icon11.png")!,
        UIImage(named: "icon12.png")!,
        UIImage(named: "icon12.png")!,
        UIImage(named: "icon13.png")!,
        UIImage(named: "icon13.png")!,
        UIImage(named: "icon14.png")!,
        UIImage(named: "icon14.png")!,
        UIImage(named: "icon15.png")!,
        UIImage(named: "icon15.png")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonTap(sender: UIButton) {
        var selectImage :UIImage = self.picture[sender.tag-1] as! UIImage
        
        sender.setImage(selectImage, forState: UIControlState.Normal)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
