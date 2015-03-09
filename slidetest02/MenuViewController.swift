//
//  MenuViewController.swift
//  slidetest02
//
//  Created by Fumiaki Saito on 2015/03/05.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapMenu(sender: AnyObject) {
        println("Menu01おされた")
        
        // 画面遷移
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        var next = storyBoard.instantiateViewControllerWithIdentifier("Third") as UIViewController
        self.presentViewController(next, animated: true, completion: nil)
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
