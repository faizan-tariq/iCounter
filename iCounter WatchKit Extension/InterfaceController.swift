import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btn: WKInterfaceButton!
    var counter: Int = 0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        btn.setTitle(String(counter))
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func onTouch() {
        counter += 1;
        btn.setTitle(String(counter))
    }
    
    @IBAction func onReset() {
           counter = 0;
           btn.setTitle(String(counter))
       }
}
