//
//  ViewController.swift
//  addClassText
//
//  Created by 林竞成 on 15/11/10.
//  Copyright © 2015年 林竞成. All rights reserved.
//

import UIKit

class ViewController: ITable {
    
    let boxView = IView.namedView("addClassText")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CocoaUI布局
        self.addIViewRow(self.boxView)
        self.reload()

        let zfb = self.boxView.getViewById("zfb") as IView
        let wxzf = self.boxView.getViewById("wxzf") as IView
        let zfb1 = self.boxView.getViewById("zfb1") as IView
        let wxzf1 = self.boxView.getViewById("wx1") as IView
        let qdzf = self.boxView.getViewById("qdzf") as! IButton
        
        zfb1.style.addClass("off")
        wxzf1.style.addClass("off")
        
        //事件
        zfb.addEvent(IEventClick, handler: { (_, _) -> Void in
            //支付宝
            //style.style.set 测试
            zfb1.style.set("background:url(on@2x.png) no-repeat;")
            wxzf1.style.set("background:url(off@2x.png) no-repeat;")
            
            //style.addClass测试
//            zfb1.style.addClass("on")
//            wxzf1.style.addClass("off")
        })
        wxzf.addEvent(IEventClick, handler: { (_, _) -> Void in
            //微信
            //style.set 测试
            zfb1.style.set("background:url(off@2x.png) no-repeat;")
            wxzf1.style.set("background:url(on@2x.png) no-repeat;")
            
            //style.addClass测试
//            zfb1.style.addClass("off")
//            wxzf1.style.addClass("on")
        })
        qdzf.addEvent(IEventClick, handler: { (_, _) -> Void in
            //确认支付
        })
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

