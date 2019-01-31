//
//  AnimationsView.swift
//  UIViewAnimations
//
//  Created by Alex Paul on 1/25/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class AnimationsView: UIView {
  
  public lazy var cyclist: UIImageView = {
    let iv = UIImageView(image: UIImage(named:"cyclist"))
    return iv
  }()
  
  public lazy var pursuitLogo: UIImageView = {
    let iv = UIImageView(image: UIImage(named:"pursuit-logo"))
    iv.clipsToBounds = true
    return iv
  }()
  
  public lazy var sledgeHammer: UIImageView = {
    let iv = UIImageView(image: UIImage(named:"sledgehammer"))
    iv.clipsToBounds = true
    return iv
  }()

  // initialization methods
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  private func commonInit() {
    backgroundColor = .yellow
    setupViews()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    // change the radius of the logo to make it a circle
    pursuitLogo.layer.cornerRadius = pursuitLogo.bounds.width / 2.0
  }
}

extension AnimationsView {
  private func setupViews() {
    setupCyclistImageView()
    setupPusuitLogo()
    setupSledgeHammer()
  }
  
  private func setupCyclistImageView() {
    addSubview(cyclist)
    cyclist.translatesAutoresizingMaskIntoConstraints = false
    cyclist.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    cyclist.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
    cyclist.heightAnchor.constraint(equalToConstant: 100).isActive = true
    cyclist.widthAnchor.constraint(equalToConstant: 100).isActive = true
  }
  
  private func setupPusuitLogo() {
    addSubview(pursuitLogo)
    pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
    pursuitLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    pursuitLogo.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
    pursuitLogo.heightAnchor.constraint(equalToConstant: 100).isActive = true
    pursuitLogo.widthAnchor.constraint(equalToConstant: 100).isActive = true
  }
  
  private func setupSledgeHammer() {
    addSubview(sledgeHammer)
    sledgeHammer.translatesAutoresizingMaskIntoConstraints = false
    sledgeHammer.topAnchor.constraint(equalTo: pursuitLogo.bottomAnchor, constant: 60).isActive = true
    sledgeHammer.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    sledgeHammer.heightAnchor.constraint(equalToConstant: 100).isActive = true
    sledgeHammer.widthAnchor.constraint(equalToConstant: 100).isActive = true

  }
}
