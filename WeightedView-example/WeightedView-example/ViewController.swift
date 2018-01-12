//
//  ViewController.swift
//  LinearLayout-UIStackView
//
//  Created by Erfan Seyyedi on 12/1/18.
//

import UIKit


class ViewController: UIViewController {
	@IBOutlet weak var middleView: WeightedView!
	
	@IBAction func changeMiddleViewSize(_ sender: Any) {
		UIView.animate(withDuration: 0.3) {
			let randomWeight = Int(arc4random_uniform(8)) + 1
			self.middleView.verticalWeight = randomWeight //weights can be set programmatically too
		}
	}
}
