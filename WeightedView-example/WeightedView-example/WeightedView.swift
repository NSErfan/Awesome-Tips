//
//  WeightedView.swift
//  LinearLayout-UIStackView
//
//  Created by Erfan Seyyedi on 12/1/18.
//

/**
This class can be used when distribution property of UIStackView is set to 'Fill Proportionally'.
It works as a container view.

The vertical and horizontal weights can be specified as normal height & weights in points, or if your UIStackView only contains WeightedViews, integer values could be set as weights.
You can change the weights both in Storyboard and in code.
*/


import UIKit

@IBDesignable
class WeightedView: UIView {
	@IBInspectable var verticalWeight: Int = 1 {
		didSet { invalidateIntrinsicContentSize() }
	}
	@IBInspectable var horizontalWeight: Int = 1 {
		didSet { invalidateIntrinsicContentSize() }
	}
	
	
	override var intrinsicContentSize: CGSize {
		return CGSize(width: CGFloat(horizontalWeight),
					  height: CGFloat(verticalWeight))
	}
}
