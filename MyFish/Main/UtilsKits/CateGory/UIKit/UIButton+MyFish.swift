//
//  MyFish.swift
//  MyFish
//
//  Created by cheny on 2017/6/30.
//  Copyright © 2017年 LHTW. All rights reserved.
//

import Foundation
import UIKit


extension UIButton{
    
    //类似于登录按钮
    class func CreatMainButton(title:String) -> UIButton{
        
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setTitle(title, for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.titleLabel?.font = SystemFont(systemFont: 14)
        btn.backgroundColor = Color(rgbInt: K_266eff)
        btn.layer.cornerRadius = 5.0
        btn.layer.masksToBounds = true
        return btn
    }
    
    //无背景色，
    class func CreatNomalButton(title:String,titleClor:UIColor,titleSelectColor:UIColor,titleFont:UIFont) -> UIButton{
        
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setTitle(title, for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.backgroundColor = Color(rgbInt: K_266eff)
        btn.layer.cornerRadius = 5.0
        btn.layer.masksToBounds = true
        return btn
    }
    
}
