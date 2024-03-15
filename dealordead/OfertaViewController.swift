//
//  OfertaViewController.swift
//  JuegoKassy
//
//  Created by Mac09 on 15/03/24.
//

import UIKit

class OfertaViewController: UIViewController {
    @IBOutlet weak var TiempoOut: UILabel!
    var timer: Timer?
    var secondsRemaining = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0 {
            secondsRemaining -= 1
            TiempoOut.text = "\(secondsRemaining)"
        }
        else {
            timer?.invalidate()
            TiempoOut.text="Tiempo agotado"
        }
    }

    func starTimer()  {
        timer = Timer.scheduledTimer(timeInterval :1, target: self, selector:#selector(updateTimer), userInfo: nil, repeats: true )
    }
    func  stopTimer() {
        timer?.invalidate()
    }

}
