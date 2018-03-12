import UIKit

class SegueMenuViewController : UIViewController {
    
   override func viewDidLoad() {
        super.viewDidLoad()
    NotificationCenter.default.addObserver(self, selector: #selector(SegueMenuViewController.ChangeVC(notification:)), name: NSNotification.Name(rawValue: "ChangeVC") , object: nil)
    }
    
    @objc func ChangeVC (notification : NSNotification){
      if let Dic = notification.userInfo as? [String : AnyObject] {
           if let Name = Dic["ToVC"] as? String {
                performSegue(withIdentifier: "Name", sender: nil)
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        performSegue(withIdentifier: "Main" , sender: nil)
    }
}
