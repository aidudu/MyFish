//
//  LoginController.swift
//  MyFish
//
//  Created by cheny on 2017/6/29.
//  Copyright © 2017年 LHTW. All rights reserved.
//

import UIKit


class LoginController: BaseViewController,UITextFieldDelegate {
    
    fileprivate var userTextField:UITextField!
    fileprivate var passwordTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initMainViews()
    }
    
    func initMainViews(){
        
        let headImageView = UIImageView.init(image: UIImage.init(named: "loginIcon"))
        self.view.addSubview(headImageView)
        _ = headImageView.sd_layout().topSpaceToView(self.view,80)?.leftSpaceToView(self.view,(KScreenWidth-80)/2)?.heightIs(80)?.widthIs(80)

        let topTool = UIToolbar.init()
        topTool.layer.cornerRadius = 5.0
        topTool.layer.masksToBounds = true
        self.view.addSubview(topTool)
        _ = topTool.sd_layout().topSpaceToView(headImageView,30)?.leftSpaceToView(self.view,20)?.rightSpaceToView(self.view,20)?.heightIs(KScreenWidth - 40)?.heightIs(101)
        
        let userImageV = UIImageView.init(image: UIImage.init(named: "zhanghao"))
        topTool.addSubview(userImageV)
        _ = userImageV.sd_layout().leftSpaceToView(topTool,10)?.topSpaceToView(topTool,16)?.heightIs(18)?.widthIs(18)
        
        userTextField = UITextField.init()
        userTextField.delegate = self
        userTextField.placeholder = "请输入手机号/邮箱"
        userTextField.returnKeyType = UIReturnKeyType.next
        userTextField.font = UIFont.systemFont(ofSize: 15)
        topTool.addSubview(userTextField)
        _ = userTextField.sd_layout().leftSpaceToView(userImageV,15)?.topSpaceToView(topTool,10)?.rightSpaceToView(topTool,10)?.heightIs(30)
        
        let label = UILabel.init()
        label.backgroundColor = UIColor.yellow
        topTool.addSubview(label)
        _ = label.sd_layout().leftSpaceToView(topTool,0)?.rightSpaceToView(topTool,0)?.heightIs(1)?.topSpaceToView(topTool,50)
        
        let passwordImageV = UIImageView.init(image: UIImage.init(named: "mima"))
        topTool.addSubview(passwordImageV)
        _ = passwordImageV.sd_layout().leftSpaceToView(topTool,10)?.topSpaceToView(label,16)?.heightIs(18)?.widthIs(18)
        
        passwordTextField = UITextField.init()
        passwordTextField.delegate = self
        passwordTextField.font = UIFont.systemFont(ofSize: 15)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "请输入密码"
        passwordTextField.returnKeyType = UIReturnKeyType.go
        topTool.addSubview(passwordTextField)
        _ = passwordTextField.sd_layout().leftSpaceToView(passwordImageV,15)?.topSpaceToView(label,10)?.rightSpaceToView(topTool,10 + 20 + 5)?.heightIs(30)
        
        let eyeButton = UIButton.init(type: UIButtonType.custom)
        eyeButton.setImage(UIImage.init(named: "eye"), for: UIControlState.normal)
        eyeButton.setImage(UIImage.init(named: "eye-click"), for: UIControlState.selected)
        topTool.addSubview(eyeButton)
        _ = eyeButton.sd_layout().rightSpaceToView(topTool,10)?.topSpaceToView(label,15)?.widthIs(20)?.heightIs(20)
        
        let loginBtn = UIButton.CreatMainButton(title: "登录")
        loginBtn.addTarget(self, action: #selector(loginClick), for: UIControlEvents.touchUpInside)
        self.view.addSubview(loginBtn)
        _ = loginBtn.sd_layout().leftSpaceToView(self.view,20)?.rightSpaceToView(self.view,20)?.topSpaceToView(topTool,60)?.heightIs(40)
    }
    
    func loginClick() {
        
        userTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        print("点击登录了")
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField{
            passwordTextField.becomeFirstResponder()
        }else{
            loginClick()
        }
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
