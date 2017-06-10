import PlaygroundSupport
import UIKit

public class TestViewController:UIViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.backgroundColor = .gray
        UIView.animate(withDuration: 2.0, animations: {
            self.view.backgroundColor = .red
        }) { (isCompleted) in
            
        }
    }
    
    func initView() {
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.backgroundColor = .gray
        
        let subView = UIView()
        subView.backgroundColor = .black
        view.addSubview(subView)
        subView.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.center.equalTo(self.view)
        }
    }
}
