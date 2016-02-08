//
//  InteractivitySecondViewController.swift
//  CustomTransition-Swift
//
//  Created by 张星宇 on 16/2/8.
//  Copyright © 2016年 zxy. All rights reserved.
//

import UIKit

class InteractivitySecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = [254, 223, 224].color    // 设置背景颜色
        
        /// 创建label
        let label = UILabel(frame: CGRectMake(0,0,150,100))
        label.center = view.center
        label.text = "To"
        label.textAlignment = .Center
        label.font = UIFont(name: "Helvetica", size: 60)
        view.addSubview(label)
        
        /// 创建button
        let button = UIButton(frame: CGRectMake(0,0,250,60))
        button.center = view.center
        button.frame.origin.y = view.frame.maxY - 100
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitle("Dismiss", forState: .Normal)
        button.addTarget(self, action: Selector("buttonDidClicked"), forControlEvents: .TouchUpInside)
        view.addSubview(button)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension InteractivitySecondViewController {
    func buttonDidClicked() {
        /**
        *  应该由FirstVC执行下面这行代码，为了保持demo简单，突出重点，这里的写法其实是不严格的，请见谅
        */
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}