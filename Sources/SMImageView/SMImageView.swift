//struct SMImageView {
//    var text = "Hello, World!"
//}
import UIKit
public class ShowSMImageView {
    static let instance = ShowSMImageView()
     func alert(arry:[String],indexPath:Int)->Showhispicture{
        let storyBoard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        let alertVC = storyBoard.instantiateViewController(withIdentifier: "AlertVC") as! Showhispicture
        alertVC.imageString = arry
        alertVC.lastIndexPathCitySelected = indexPath
       
     
        return alertVC
    }
    
}
