import UIKit
class ViewController: UIViewController {
  
    @IBAction func SideMenuButton(_ sender: UIButton) {
        Sender.ToggleMenu()
    }
    @IBOutlet weak var ResultLabel: UILabel!
    let brain : MyOperations = MyOperations()
    @IBAction func NumbersAction(_ sender: UIButton) {
        if ResultLabel.text == "0" {
            ResultLabel.text = ""
        }
        if sender.tag == -1 {
            if !ResultLabel.text!.contains("."){
            ResultLabel.text = ResultLabel.text! + "."
            }
        }else {
        ResultLabel.text = ResultLabel.text! + String(sender.tag)
        }
    }
    @IBAction func OperationsButtons(_ sender: UIButton) {
        brain.add(number: Double(ResultLabel.text!)! , with: Character((sender.titleLabel?.text)!))
        if sender.titleLabel!.text! == "=" {
           ResultLabel.text = brain.result()
           brain.restart()
        }else {
            ResultLabel.text! = "0"
        }
    }
    @IBAction func ACButtonAction(_ sender: UIButton) {
        ResultLabel.text = "0"
        brain.restart()
    }
    @IBAction func MinusPlusButton(_ sender: UIButton) {
        ResultLabel.text = String(Double(ResultLabel.text!)! * -1)
    }
    @IBAction func PercentageButton(_ sender: UIButton) {
        ResultLabel.text = String(Double(ResultLabel.text!)! / 100)
    }
}
