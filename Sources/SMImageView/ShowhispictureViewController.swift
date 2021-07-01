//
//  Showhispicture.swift
//  
//
//  Created by الياسي on 28/06/2021.
//


import UIKit
public var lastIndexPathCitySelected = Int()
public var imageString = [String]()
public class ShowhispictureViewController: UIViewController {
 
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    @IBOutlet weak var imagViewPageControl: UIPageControl!
    @IBOutlet weak var btnCancel: UIButton!
    //public var lastIndexPathCitySelected = Int()

    public override func viewDidLoad() {
        super.viewDidLoad()
    //  matrixarrangement()
    //-------------------------------------
/*
    automaticallyAdjustsScrollViewInsets = false
    scrollToTopWithoutAnimation()
 */
     }
    
    public override func viewWillAppear(_ animated: Bool) {
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
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
       imagViewPageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(imagViewPageControl.frame.width)
     }

    public func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        imagViewPageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(imagViewPageControl.frame.width)
     }
    

}

extension ShowhispictureViewController:UICollectionViewDelegate, UICollectionViewDataSource  ,UICollectionViewDelegateFlowLayout{
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageString.count
     // return family.count
     }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imagesCollectionView.dequeueReusableCell(withReuseIdentifier: "CellimagView", for: indexPath) as! CellimagView
//        imageString
       
        cell.imagView.image = UIImage(named:imageString[indexPath.row])
       return cell
   }
    
    public func collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
      return 0
       }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: imagesCollectionView.frame .width , height: self.imagesCollectionView.frame .height)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
 }
