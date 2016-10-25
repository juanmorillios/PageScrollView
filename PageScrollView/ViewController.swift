//
//  ViewController.swift
//  PageScrollView
//
//  Created by Juan Morillo on 24/10/16.
//  Copyright © 2016 Juan Morillo. All rights reserved.

import UIKit

class ViewController: UIViewController {
  
  var images = [UIImageView]()
  
  @IBOutlet weak var scrollView: UIScrollView!
  

  override func viewDidLoad() {
    super.viewDidLoad()
  
  }
  
  override func viewDidAppear(_ animated: Bool) {
    
    var contentWith: CGFloat = 0.0
    
    let scrollWith = scrollView.frame.size.width
    
    for x in 0...2 {
      
      let image = UIImage(named: "icon\(x).png")
      let imageView = UIImageView(image: image)
      images.append(imageView)
      
      var newX : CGFloat = 0.0
      newX = scrollWith / 2 + scrollWith * CGFloat(x)
      
      contentWith += newX
      
      scrollView.addSubview(imageView)
      
      imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
    }

    scrollView.clipsToBounds = false
    scrollView.contentSize = CGSize(width: contentWith, height: view.frame.size.height)

  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }

}

