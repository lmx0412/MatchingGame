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
    
    @IBOutlet weak var GameSceneLabel: UILabel!
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
    
    var isDisable = false
    var pictureFlipped = -1
    var picture1: UIButton = UIButton()
    var picture2: UIButton = UIButton()
    var ismatch = false
    var stepCount = 0
    var matchCount = 0
    var picture:NSMutableArray = [
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
        self.shffleArray()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonTap(sender: UIButton) {
        self.stepCount += 1
        if(isDisable == true){
            return
        }
        if(self.pictureFlipped >= 0 && self.pictureFlipped != sender.tag){
            
            let lastImage :UIImage = self.picture[self.pictureFlipped-1] as! UIImage
            self.picture2 = sender as UIButton
            let selectImage :UIImage = self.picture[sender.tag-1] as! UIImage
            sender.setImage(selectImage, forState: UIControlState.Normal)
            isDisable = true
            self.pictureFlipped = -1
            if(lastImage == selectImage){
                self.picture1.enabled = false
                self.picture2.enabled = false
                //self.picture1.userInteractionEnabled = true
                //self.picture2.userInteractionEnabled = true
                self.picture1.hidden = true
                self.picture2.hidden = true
                ismatch = true
                self.matchCount += 1
            }
            if(!ismatch){
                NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(GameSceneViewController.resetPicture), userInfo: nil, repeats: false)
            }
            else{
                resetPicture()
            }
            if(self.matchCount == 15){
                gameFinish()
            }
        }
        else{
            self.pictureFlipped = sender.tag
            self.picture1 = sender as UIButton
            let selectImage :UIImage = self.picture[sender.tag-1] as! UIImage
            sender.setImage(selectImage, forState: UIControlState.Normal)
        }
    }

    func resetPicture(){
        if(!ismatch){
            self.picture1.setImage(nil, forState: UIControlState.Normal)
            self.picture2.setImage(nil, forState: UIControlState.Normal)
        }
        isDisable = false
        ismatch = false
    }
    
    func gameFinish(){
        self.stepCount = self.stepCount/2
        self.GameSceneLabel.text = "You win with \(self.stepCount)steps"
    }
    
    func shffleArray(){
        var i = 0
        while(i<30){
            self.picture.exchangeObjectAtIndex(Int(arc4random_uniform(29)), withObjectAtIndex: Int(arc4random_uniform(29)))
            i += 1
        }
        
    }
    //func shuffleArray(){
      //  var i = 0
        //var count1 = Int(arc4random_uniform(29))
        //var image1 :UIImage
        //while(i<20){
          //  var count1 = Int(arc4random_uniform(29))
            //var count2 = Int(arc4random_uniform(29))
            //image1 = self.picture[count1] as! UIImage
            //self.picture[count1] = self.picture[count2]
            
            
            
            //i += 1
        //}
        
        
   // }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
