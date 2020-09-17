import UIKit

var images = ["대전.jpeg", "벚꽃.jpeg", "전청.jpeg", "수련회.jpeg", "수련회 8조.jpeg", "뮤지컬 공연.jpeg", "콘서트.jpeg", "학교 홈커밍데이.jpeg", "학생회 단합.jpeg", "첫 예비군.jpeg", "친구들.jpeg", "예비군 단체.jpeg", "코사인 파형.jpeg", "구형파.jpeg"]

class PageViewController: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.white
        
        imgView.image = UIImage(named: images[0])
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(PageViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(PageViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(PageViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                if (pageControl.currentPage<pageControl.numberOfPages-1) {
                    pageControl.currentPage = pageControl.currentPage + 1
                }
            case UISwipeGestureRecognizerDirection.right:
                if (pageControl.currentPage>0) {
                    pageControl.currentPage = pageControl.currentPage - 1
                }
            default: break
            }
        }
        
        imgView.image = UIImage(named: images[pageControl.currentPage] )
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        imgView.transform = imgView.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }


    @IBAction func pageChanged(_ sender: UIPageControl) {
        
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

