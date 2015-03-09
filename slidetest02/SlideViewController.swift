//
//  SlideViewController.swift
//  slidetest02
//
//  Created by Fumiaki Saito on 2015/03/04.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class SlideViewController: UIViewController {

    // メニュー表示ステータス
    var isRightMenuShown: Bool = false
    
    // メニュービュー
    var menuViewController: MenuViewController?
    
    // 端末のサイズを取得
    let viewSize = UIScreen.mainScreen().applicationFrame.size
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // メニューのビューコントローラを読み込む
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        self.menuViewController = storyBoard.instantiateViewControllerWithIdentifier("MenuViewControlleID") as MenuViewController!

        self.addChildViewController(self.menuViewController!)

        // ビューの右端のx座標を取得し、メニューの初期配置x座標とする
        let x = self.viewSize.width
        
        // メニューがバーが隠れないようにする為、高さを取得
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        let navBarHeight = self.navigationController?.navigationBar.frame.size.height
        let barSpace = statusBarHeight + navBarHeight!
        
        // 隠して配置
        var size = self.view.frame.size
        var childFrame = CGRect(x: x, y: barSpace, width: size.width, height: size.height)
        self.menuViewController?.view.frame = childFrame
        
        self.view.addSubview(self.menuViewController!.view)
        self.menuViewController!.didMoveToParentViewController(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func openMenu() {

        var menuView = self.menuViewController!.view

        // アニメーション設定
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            
            // メニュー表示
            var oldFrame = menuView.frame
            var newx: CGFloat = 50.0 // メニューを被せないスペース
            var newFrame = CGRect(x: newx, y: oldFrame.origin.y, width: oldFrame.size.width, height: oldFrame.size.height)
            menuView.frame = newFrame;
            
            // 最前面にする
            self.view.bringSubviewToFront(menuView)
            
            }) { (Bool) -> Void in
                
                // メニュー表示ステータス変更
                self.isRightMenuShown = true
        }
        
    }
    
    func closeMenu() {
        
        var menuView = self.menuViewController!.view
        
        // アニメーション設定
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            
            // メニュー非表示
            var oldFrame = menuView.frame
            var newx: CGFloat = self.viewSize.width
            var newFrame = CGRect(x: newx, y: oldFrame.origin.y, width: oldFrame.size.width, height: oldFrame.size.height)
            menuView.frame = newFrame;
            
            
            }) { (Bool) -> Void in
                
                // メニュー表示ステータス変更
                self.isRightMenuShown = false
        }
    }
    
    func toggleMenu() {
        if (self.isRightMenuShown) {
            self.closeMenu()
        } else {
            self.openMenu()
        }
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
