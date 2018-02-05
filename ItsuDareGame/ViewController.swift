//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by kawagishi on 2018/02/04.
//  Copyright © 2018年 juna Kawagishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray:[String] = ["一年前","一週間前","昨日","今日","１ヶ月前"]
    let dokodeArray:[String] = ["山の上で","アメリカで","学校で","クラスで","オフィスで"]
    let daregaArray:[String] = ["俺が","大統領が","先生が","友達が","まもが"]
    let doshitaArray:[String] = ["叫んだ","演説した","怒った","踊った","微笑んだ"]
    
    var index:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        daregaLabel.text = daregaArray[index]
        dokodeLabel.text = dokodeArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index += 1
        if index > 4 {
            index = 0
        }
    }
    
    @IBAction func random(){//letとvarの違い
        let itsuIndex = Int(arc4random_uniform(5))
        let daregaIndex = Int(arc4random_uniform(5))
        let dokodeIndex = Int(arc4random_uniform(5))
        let doushitaIndex = Int(arc4random_uniform(5))
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("誰が: \(daregaIndex)")
        print("どうした: \(doushitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        daregaLabel.text = daregaArray[dokodeIndex]
        dokodeLabel.text = dokodeArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doushitaIndex]

        
    }

    @IBAction func reset(){
        itsuLabel.text = "---"
        daregaLabel.text = "---"
        dokodeLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
    }

}

