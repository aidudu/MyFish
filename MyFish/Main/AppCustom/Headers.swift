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


let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeight = UIScreen.main.bounds.size.height
let KRadio = KScreenWidth/375
let KUserName = "username"
let KPassWord = "password"
let KToken = "token"
let RYtoken = "rongyuntoken"
let RYMid = "rongyunmyid"



//RGB Color
func Color(rgbString:String) -> UIColor {
    let rgbValue:Int = Int(rgbString)!;
    return UIColor(colorLiteralRed: (Float(((rgbValue & 0xFF0000) >> 16)))/255.0, green: (Float(((rgbValue & 0xFF00) >> 8)))/255.0, blue: (Float((rgbValue & 0xFF)))/255.0, alpha: 1.0)
}

func ColorAlpha(rgbString:String,alpha:Float) -> UIColor {
    let rgbValue:Int = Int(rgbString)!;
    return UIColor(colorLiteralRed: (Float(((rgbValue & 0xFF0000) >> 16)))/255.0, green: (Float(((rgbValue & 0xFF00) >> 8)))/255.0, blue: (Float((rgbValue & 0xFF)))/255.0, alpha: alpha)
}
