//
//  AnimationsViewController.swift
//  UIViewAnimations
//
//  Created by Alex Paul on 1/25/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class AnimationsViewController: UIViewController {
  
  let animationsView = AnimationsView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(animationsView)
    
    // animate backgroundColor => yellow -> red
    UIView.animate(withDuration: 3.0, delay: 0.3, options: [.repeat, .curveEaseInOut, .autoreverse ], animations: {
      self.animationsView.backgroundColor = .red
    }, completion: nil)
    
    
    // use tranform to animate cyclist
    UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .curveEaseInOut], animations: {
      self.animationsView.cyclist.transform = CGAffineTransform(translationX: 600, y: 0)
    }) { (done) in
      // execute code when animation is done
    }
    
    // animate logo with scale transform
    UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse], animations: {
      self.animationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 10.0, y: 8.0)//(scaleX: 2.0, y: 2.0)
    })
    
    // animate slege hammer with rotation transform
    UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .curveEaseIn, .autoreverse], animations: {
      self.animationsView.sledgeHammer.transform = CGAffineTransform(rotationAngle: (7.0 * .pi) / 12)
    })
    
  }
}
