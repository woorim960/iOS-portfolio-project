//
//  ViewController.swift
//  PageControl_201516063
//
//  Created by 203a00 on 2018. 4. 23..
//  Copyright © 2018년 Park-woorim. All rights reserved.
//

import UIKit

var images = ["대전.jpeg", "벚꽃.jpeg", "전청.jpeg", "수련회.jpeg", "수련회 8조.jpeg", "뮤지컬 공연.jpeg", "콘서트.jpeg", "학교 홈커밍데이.jpeg", "학생회 단합.jpeg", "첫 예비군.jpeg", "친구들.jpeg", "예비군 단체.jpeg", "코사인 파형.jpeg", "구형파.jpeg"]

class PageViewController: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.white
        
        imgView.image = UIImage(named: images[0])
    }


    @IBAction func pageChanged(_ sender: UIPageControl) {
        
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

