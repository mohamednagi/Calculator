import UIKit

class Sender : UIViewController{
   
 static var IsMenu : Bool = false
    
 static func ToggleMenu (){
        
        if IsMenu {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
            IsMenu = false
        }else {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)
            IsMenu = true
        }
    }
    
}
