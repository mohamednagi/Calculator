import UIKit

class MySideBarShadowView : UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowOpacity = 0.35
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.35).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: 3, height: -3)
    }
}
