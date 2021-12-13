

import UIKit

class ViewController: UIViewController {
    
    var num:String=""
    var size:Int = 1
    var percentagetip = 0.0
    
    
    func addNum(num2:String){
        
       num=num+num2
        numberLabel.text=num
    }
    //Labels
    
    @IBOutlet weak var groupsizeLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var five_prcentage: UILabel!
    @IBOutlet weak var ten_percentage: UILabel!
    @IBOutlet weak var fiveten_percentage: UILabel!
    @IBOutlet weak var five_percentage_1: UILabel!
    @IBOutlet weak var five_percentage_2: UILabel!
    @IBOutlet weak var ten_percentage_1: UILabel!
    @IBOutlet weak var ten_percentage_2: UILabel!
    @IBOutlet weak var fiveten_percentage_1: UILabel!
    @IBOutlet weak var fiveten_percentage_2: UILabel!
    @IBOutlet weak var UItip: UISlider!
    @IBOutlet weak var UIsize: UISlider!
    @IBOutlet weak var UILabelSize: UILabel!
  
    
    //TipSlider
    
    @IBAction func tipaction(_ sender: Any) {
        percentagetip = Double(UItip.value)
    five_prcentage.text = "\(Double(round(100 * percentagetip+5) / 100))%"
        ten_percentage.text = "\(Double(round(100 * (percentagetip+10)) / 100))%"
        fiveten_percentage.text = "\(Double(round(100 * (percentagetip+15)) / 100))%"
        tipfunc()
        
    }
    
    @IBAction func GroupSize(_ sender: Any) {
        size = Int(UIsize.value)
               UILabelSize.text = "\(size)"
        tipfunc()

    }
    
  
    
    func tipfunc(){
        
        let total = Double( numberLabel.text!)!
        let tip_5 = total * Double(((percentagetip + 5) / 100))
        let tip_10 = total * Double(((percentagetip + 10) / 100))
        let tip_15 = total * Double(((percentagetip + 15) / 100))
        five_prcentage.text = "\(tip_5)"
        ten_percentage.text = "\(tip_10)"
        fiveten_percentage.text = "\(tip_15)"
        
        let total_L5 = total + tip_5
        let total_L10 = total + tip_10
        let total_L15 = total  + tip_15
        
       five_percentage_1.text = "\(total_L5)"
        ten_percentage_1.text = "\(total_L10)"
        fiveten_percentage_1.text = "\(total_L15)"
        five_percentage_2.text = "\(total_L5 / Double(size))"
        ten_percentage_2.text = "\(total_L10 / Double(size))"
        fiveten_percentage_2.text = "\(total_L15 / Double(size))"
        
        
        
        
        
        
        
     
        
    }
    
    //Button Actions
    
    @IBAction func ZeroAction(_ sender: Any) {
        addNum(num2: "0")
        tipfunc()
    }
    
    @IBAction func oneAction(_ sender: Any) {
        addNum(num2: "1")
        tipfunc()

    }
    @IBAction func twoAction(_ sender: Any) {
        addNum(num2: "2")
tipfunc()
    }
    
    @IBAction func threeAction(_ sender: Any) {
        addNum(num2: "3")
tipfunc()
    }
    @IBAction func fourAction(_ sender: Any) {
        addNum(num2: "4")
tipfunc()
    }
    
    @IBAction func fiveAction(_ sender: Any) {
        addNum(num2: "5")
        tipfunc()

    }
    
    @IBAction func sixAction(_ sender: Any) {
        addNum(num2: "6")
        tipfunc()

    }
    @IBAction func savenAction(_ sender: Any) {
        addNum(num2: "7")
        tipfunc()

    }
    @IBAction func eightAction(_ sender: Any) {
        addNum(num2: "8")
        tipfunc()
    }
    @IBAction func nineAction(_ sender: Any) {
        addNum(num2: "9")
tipfunc()
    }
    
    @IBAction func dotsAction(_ sender: Any) {
        addNum(num2: ".")
        tipfunc()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     }

    @IBAction func clearAction(_ sender: Any) {
        five_percentage_1.text="0.0"
        five_percentage_2.text="0.0"
        ten_percentage_1.text="0.0"
        ten_percentage_2.text="0.0"
        fiveten_percentage_1.text="0.0"
        fiveten_percentage_2.text="0.0"
        num=""
       numberLabel.text=""
        groupsizeLabel.text=""
        UItip.value=0
        UIsize.value=0
    }
    
  
 
        
  
    }

