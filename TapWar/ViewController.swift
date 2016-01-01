//
//  ViewController.swift
//  TapWar
//
//  Created by Sravan on 01/01/16.
//  Copyright © 2016 pioneer11x. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TopBtn: UIButton!
    @IBOutlet var BtmBtn: UIButton!
    @IBOutlet var blueLbl: UILabel!
    @IBOutlet var RedLbl: UILabel!
    
    @IBOutlet var endSceneLbl: UILabel!
    @IBOutlet var endScene: UIButton!
    @IBOutlet var topEndLbl: UILabel!
    @IBOutlet var btmEndLbl: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        setHiddenValue(true)
        updateLabels()
        
        blueLbl.transform = CGAffineTransformMakeRotation(3.14)
        topEndLbl.transform = CGAffineTransformMakeRotation(3.14)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabels(){
        blueLbl.text = "\(score)"
        RedLbl.text = "\(score)"
    }
    
    func testScore(){
        if score >= 10{
            setHiddenValue(false)
            topEndLbl.text = "Winner"
            btmEndLbl.text = "Loser"
        }
        else if score <= -10{
            setHiddenValue(false)
            topEndLbl.text = "Loser"
            btmEndLbl.text = "Winner"
        }
    }
    
    func setHiddenValue(value: Bool){
        endSceneLbl.hidden = value
        endScene.hidden = value
        topEndLbl.hidden = value
        btmEndLbl.hidden = value
    }

    @IBAction func blueBtnAction(sender: UIButton) {
        
        score++
        updateLabels()
        testScore()
    }
    @IBAction func endSceneAction(sender: UIButton) {
        score = 0
        updateLabels()
        setHiddenValue(true)
        
    }
    
    @IBAction func redBtnAction(sender: UIButton) {
        
        score--
        updateLabels()
        testScore()
        
    }

}

