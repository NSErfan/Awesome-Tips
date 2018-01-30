//
//  ShadowView.swift
//  ShadowView
//
//  Created by Erfan Seyyedi on 30/1/18.
//  Copyright © 2018 Erfan Seyyedi. All rights reserved.
//

import UIKit

@IBDesignable
class EasyShadowView: UIView {
	//MARK: - Properties
	private let containerView = UIView()
	//MARK: Inspectables
	@IBInspectable
	var cornerRadius: CGFloat = 0.0 {
		didSet {
			containerView.layer.cornerRadius = cornerRadius
			layer.cornerRadius = cornerRadius
		}
	}
	@IBInspectable
	var shadowColor: UIColor = .clear {
		didSet {
			layer.shadowColor = shadowColor.cgColor
		}
	}
	@IBInspectable
	var shadowOffset: CGSize = CGSize(width: 0, height: 0) {
		didSet {
			layer.shadowOffset = shadowOffset
		}
	}
	@IBInspectable
	var shadowRadius: CGFloat = 0.0 {
		didSet {
			layer.shadowRadius = shadowRadius
		}
	}
	@IBInspectable
	var shadowOpacity: Float = 0.0 {
		didSet {
			layer.shadowOpacity = shadowOpacity
		}
	}
	//MARK: - Initialization
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupViews()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}
	
	private func setupViews() {
		containerView.frame = bounds
		containerView.clipsToBounds = true
		clipsToBounds = false
		addSubview(containerView)
	}
}


// MARK: -
extension EasyShadowView {
	override func prepareForInterfaceBuilder() {
		setupViews()
	}
	
	
	override func addSubview(_ view: UIView) {
		if view == containerView {
			super.addSubview(containerView)
		} else {
			containerView.addSubview(view)
		}
	}
}
