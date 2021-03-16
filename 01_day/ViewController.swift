//
//  ViewController.swift
//  01_day
//
//  Created by 李鹏 on 2021/3/16.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var text = """
    我们一起学习吧，
    就这么愉快的决定了。
    每天练习一下，
    每天都要进步
    """
    
    var fonts:Array = ["MFTongXin_Noncommercial-Regular",
        "MFJinHei_Noncommercial-Regular",
        "MFZhiHei_Noncommercial-Regular",
        "Zapfino",
        "Gaspar Regular"]
    
    var fontIndex = 0;
    
    let textLabel = UILabel();
    let changeButton = UIButton();
    
    // 按钮点击事件
    @objc func changeFont() {
        
        fontIndex = (fontIndex + 1) % 5;
        textLabel.font = UIFont.init(name: self.fonts[fontIndex], size: 18)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textLabel.font = UIFont.systemFont(ofSize: 17)
        self.textLabel.textColor = UIColor.black
        self.textLabel.numberOfLines = 0
        self.textLabel.text = text
        self.view.addSubview(self.textLabel)
        
        self.textLabel.snp.makeConstraints { (make) in
            make.top.equalTo(200)
            make.centerX.equalTo(self.view)
            make.left.equalTo(20)
            make.right.equalTo(20)
        }
        
        self.changeButton.setTitle("修改字体", for: .normal)
        self.changeButton.addTarget(self, action: #selector(changeFont), for: .touchUpInside)
        self.changeButton.backgroundColor = UIColor.blue
        self.view.addSubview(self.changeButton)
        self.changeButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.textLabel.snp.bottom).offset(50)
            make.centerX.equalTo(self.view)
            make.width.height.equalTo(80)
        }
    }


}

