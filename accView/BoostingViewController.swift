//
//  BoostingViewController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class BoostingViewController:  ViewController  {
    @IBOutlet weak var middleImage: RoundCircle!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    var timerPointer: Timer?
    
    @IBOutlet weak var midTitle: UILabel!
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var improveLabel: UILabel!
    @IBOutlet weak var loseLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    var time = 0;
    override  func viewDidLoad() {
        super.viewDidLoad()
        middleImage.image = Context.currentGame!.bigIcon
    }
    
    
    func startBooster() {
        startButton.backgroundColor = UIColor(named: "Color/boost_button_is_boosting")
        startTimer()
        Context.isBoosting = true;
        startButton.setTitle("停止加速", for: .normal)
    }
    
    func endBooster() {
         startButton.backgroundColor = UIColor(named: "Color/boost_button_end_boosting")
         Context.isBoosting = false;
        startButton.setTitle("开始加速", for: .normal)
         endTimer()
    }
    
    @IBAction func startPress(_ sender: UIButton) {
        if (!Context.isBoosting) {
            if(!Context.currentUser.isLogedIn) {
                let alert = UIAlertController(title: "请登录", message: "您还没有登陆，请点击右下方我的图标进入登陆页面", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                self.present(alert, animated: true)
                return
            }
            startBooster()
        } else {
            endBooster()
        }
    }
    
    @objc func fireTimer() {
        let (h,m,s) = secondsToHoursMinutesSeconds(seconds: time)
        timer.text = String(format: "%02d:%02d:%02d", h, m ,s)
        time = time + 1
    }
    
    func startTimer(){
        timerPointer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BoostingViewController.fireTimer), userInfo: "timer", repeats: true)
        RunLoop.current.add(timerPointer!, forMode: RunLoop.Mode.common)
    }
    func endTimer() {
        timerPointer!.invalidate()
        timer.text = "00:00:00"
        time = 0;
    }
    func secondsToHoursMinutesSeconds (seconds : Int) -> (Int, Int, Int) {
        return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
    
    
}
