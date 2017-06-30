//
//  Headers.swift
//  MyFish
//
//  Created by cheny on 2017/6/29.
//  Copyright © 2017年 LHTW. All rights reserved.
//

import Foundation
import UIKit
import SDAutoLayout

//WIDTH -- HEIGHT
let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeight = UIScreen.main.bounds.size.height
let KRadio = KScreenWidth/375
let KUserName = "username"
let KPassWord = "password"
let KToken = "token"
let RYtoken = "rongyuntoken"
let RYMid = "rongyunmyid"

//COLOR
let K_266eff = 0x266eff


//RGB Color
func Color(rgbInt:Int) -> UIColor {
    return UIColor(colorLiteralRed: (Float(((rgbInt & 0xFF0000) >> 16)))/255.0, green: (Float(((rgbInt & 0xFF00) >> 8)))/255.0, blue: (Float((rgbInt & 0xFF)))/255.0, alpha: 1.0)
}

func ColorAlpha(rgbInt:Int,alpha:Float) -> UIColor {
    return UIColor(colorLiteralRed: (Float(((rgbInt & 0xFF0000) >> 16)))/255.0, green: (Float(((rgbInt & 0xFF00) >> 8)))/255.0, blue: (Float((rgbInt & 0xFF)))/255.0, alpha: alpha)
}

func SystemFont(systemFont:Float) -> UIFont {
    return UIFont.systemFont(ofSize: CGFloat(systemFont))
}

func boladFont(boladFont:Float) -> UIFont {
    return UIFont.boldSystemFont(ofSize: CGFloat(boladFont))
}
