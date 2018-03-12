import Foundation

class MyOperations {
    func restart (){
        ArrElement = [ ]
    }
    func add (number : Double , with operation : Character){
        ArrElement.append(NumnOp(num : number , op : operation))
    }
    func result () -> String {
        MulnDev()
        minus()
        return String( ArrElement.reduce(0, {$0 + $1.num}))
    }
    typealias NumnOp = (num : Double , op : Character)
    var ArrElement : [ NumnOp ] = []
    
    func MulnDev (){
        
        for (index , current) in ArrElement.enumerated() {
            if current.op == "X" || current.op == "/" {
                let  AfterCurrent = ArrElement[index + 1]
                var NewCalc : NumnOp!
                if current.op == "X" {
                    NewCalc = NumnOp(num : current.num * AfterCurrent.num , op : AfterCurrent.op )
                } else if current.op == "/" {
                    NewCalc = NumnOp(num: current.num / AfterCurrent.num , op : AfterCurrent.op)
                }
                ArrElement.remove(at: index)
                ArrElement.remove(at: index)
                ArrElement.insert(NewCalc , at: index)
                MulnDev()
                break
         }
        }
       }
    
    func minus () {
        
        for (index , current) in ArrElement.enumerated() {
            if current.op == "-"  {
                let  AfterCurrent = ArrElement[index + 1]
                let NewCalc : NumnOp = NumnOp(num : current.num - AfterCurrent.num , op : "+" )
                ArrElement.remove(at: index)
                ArrElement.remove(at: index)
                ArrElement.insert(NewCalc , at: index)
                minus()
                break
            }
        }
    }
  
    }
