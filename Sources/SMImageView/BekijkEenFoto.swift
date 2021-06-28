//
//  BekijkEenFoto.swift
//  AL-BADYAH
//
//  Created by ALYASI on 15/01/2021.
//  Copyright © 2021 ALYASI. All rights reserved.
//

import UIKit

class BekijkEenFoto{
    public init() {}
    public func alert(arry:[String],indexPath:Int)->PictureDisplayService{
        let storyBoard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        let alertVC = storyBoard.instantiateViewController(withIdentifier: "AlertVC") as! PictureDisplayService
        alertVC.imageString = arry
        alertVC.lastIndexPathCitySelected = indexPath
       
     
        return alertVC
    }
    
}
