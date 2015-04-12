//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 佐々木華 on 2015/04/12.
//  Copyright (c) 2015年 Hana sasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsuLabel:UILabel!
    @IBOutlet var dokodeLabel:UILabel!
    @IBOutlet var daregaLabel:UILabel!
    @IBOutlet var doshitaLabel:UILabel!
    
    var itsuArray:[String] = ["1年前","1週間前","昨日","今日"]
    var dokodeArray:[String] = ["山の上で","アメリカで","学校で","クラスで"]
    var daregaArray:[String] = ["僕が","大統領が","先生が","友達が"]
    var doshitaArray:[String] = ["叫んだ","演説した","怒った","踊った"]
    
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
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3{
            index = 0
    }
}
    
    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func random(){
        var itsuIndex = Int(arc4random_uniform(3))
        var dokodeIndex = Int(arc4random_uniform(3))
        var daregaIndex = Int(arc4random_uniform(3))
        var doshitaIndex = Int(arc4random_uniform(3))
        
        NSLog("いつ:%d", itsuIndex)
        NSLog("どこで:%d", dokodeIndex)
        NSLog("だれが:%d", daregaIndex)
        NSLog("どうした:%d", doshitaIndex)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }
}

