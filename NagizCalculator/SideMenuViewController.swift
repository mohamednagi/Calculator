import UIKit

class SideMenuViewController : UIViewController {
       
    @IBAction func ButtonsAction(_ sender: UIButton) {
        var ToVC : String = ""
        if sender.tag == 0 {
            ToVC = "Main"
        } else if sender.tag == 1 {
            ToVC = "AboutMe"
        }else if sender.tag == 2 {
            ToVC = "ContactMe"
     }
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ChangeVC"), object: nil, userInfo: ["ToVC" : ToVC] )
    } 
    
}
