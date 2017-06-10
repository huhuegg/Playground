//: [上一页](@previous) [下一页](@next)

import PlaygroundSupport
import UIKit

//: #### Sources文件夹中的class必须是public才能被调用
//: * You have to add public access attribute to your classes, methods and properties in source folder to make them accessible from main playground file as they treated as separate module by compiler
let ctl = TestViewController()

//: #### 可以在playground中直接访问Sources文件夹中的SnapKit,也可以在Sources文件夹中的访问
let subView = UIView()
subView.backgroundColor = .black
ctl.view.addSubview(subView)
subView.snp.makeConstraints { (make) in
    make.width.height.equalTo(50)
    make.left.equalTo(ctl.view.snp.left).offset(10)
    make.bottom.equalTo(ctl.view.snp.bottom).offset(-10)
}

//: #### 将ctl.view设置为liveView
PlaygroundPage.current.liveView = ctl.view

//: [上一页](@previous) [下一页](@next)
