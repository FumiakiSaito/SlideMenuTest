//
//  TopViewController.swift
//  slidetest02
//
//  Created by Fumiaki Saito on 2015/03/04.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

// メニュークラスを継承
class TopViewController: SlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("topviewcontroller呼ばれた")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggleMenu(sender: AnyObject) {
        super.toggleMenu()
    }
   
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}