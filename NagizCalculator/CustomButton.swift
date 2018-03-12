import UIKit

class CustomButton : UIButton {
    
    
   override func awakeFromNib() {
    super.awakeFromNib()   
    
    self.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
    self.layer.borderWidth = 1.5
    
    } 
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2
    }
}
