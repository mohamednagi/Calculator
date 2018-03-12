import UIKit

class Reciever : UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBOutlet weak var SideMenuLayOut: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(Reciever.HideMenu), name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(Reciever.ShowMenu), name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)
    }
    
    
    @objc func HideMenu (){
        SideMenuLayOut.constant = 0
        UIView.animate(withDuration: 0.5){
            self.view.layoutIfNeeded()
        }
    }
   @objc  func ShowMenu(){
        SideMenuLayOut.constant = self.view.frame.size.width * 0.7
    UIView.animate(withDuration: 0.5){
        self.view.layoutIfNeeded()
    }
    
    }
}
