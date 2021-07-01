struct SMImageView {
    var text = "Hello, World!"
}
import UIKit
public class Hello: UIViewController {
    public var World = 0
    
   public override func viewDidLoad() {
        super.viewDidLoad()
       print(World)
        view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
    }
}
