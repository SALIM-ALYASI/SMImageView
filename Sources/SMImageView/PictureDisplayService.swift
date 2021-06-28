//
//  PictureDisplayService.swift
//  AL-BADYAH
//
//  Created by ALYASI on 15/01/2021.
//  Copyright © 2021 ALYASI. All rights reserved.
//

import UIKit

class PictureDisplayService: UIViewController {
    var imageString = [String]()
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    @IBOutlet weak var imagViewPageControl: UIPageControl!
    @IBOutlet weak var btnCancel: UIButton!
    var lastIndexPathCitySelected = Int()

  override func viewDidLoad() {
        super.viewDidLoad()
    //  matrixarrangement()
    //-------------------------------------
/*
    automaticallyAdjustsScrollViewInsets = false
    scrollToTopWithoutAnimation()
 */
     }
    
    override func viewWillAppear(_ animated: Bool) {
        imagesCollectionView.layoutIfNeeded()
        let indexPathrow = IndexPath(item:lastIndexPathCitySelected , section:0)
        imagesCollectionView.scrollToItem(at: indexPathrow , at: .top, animated: true)
        imagViewPageControl.numberOfPages = imageString.count
    }
    
  
    @IBAction func panGestureRecognizer(_ sender: UIPanGestureRecognizer) {
        dismiss(animated: true)
      
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        dismiss(animated: true)
      
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
       imagViewPageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(imagViewPageControl.frame.width)
     }

    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        imagViewPageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(imagViewPageControl.frame.width)
     }
    

}

extension PictureDisplayService:UICollectionViewDelegate, UICollectionViewDataSource  ,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageString.count
     // return family.count
     }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imagesCollectionView.dequeueReusableCell(withReuseIdentifier: "imagCell", for: indexPath) as! imagCell
//        imageString
       
        cell.imagView.image = UIImage(named:imageString[indexPath.row])
       return cell
   }
    
    func collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
      return 0
       }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: imagesCollectionView.frame .width , height: self.imagesCollectionView.frame .height)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
 }
