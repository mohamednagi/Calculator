import UIKit

class MyView : UIView {
    
    let MyLayer = CAGradientLayer ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowOpacity = 0.35
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.35).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
        
        let firstColor = UIColor.init(red: 152/255, green: 53/255, blue: 160/255, alpha: 1).cgColor
        let secondColor = UIColor.init(red: 85/255, green: 116/255, blue: 200/255, alpha: 1).cgColor
        MyLayer.colors = [firstColor , secondColor]
        MyLayer.startPoint = CGPoint(x: 0, y: 0.1)
        MyLayer.endPoint = CGPoint(x: 0, y: 0.7)
        MyLayer.zPosition = -1
        self.layer.addSublayer(MyLayer)
        
    }
   override func layoutSubviews() {
        super.layoutSubviews()
        MyLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width , height: self.frame.size.height)
    }
}
