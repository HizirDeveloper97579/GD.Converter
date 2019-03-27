//
//  ConverterFunctionsAnimation.swift
//  Converter
//
//  Created by -=HIZIR=- on 27/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: - Animate ConverterController functions
extension ConverterViewController {
	
	//MARK: - arrow animation between input fields
	public func animateArrow(oneOrTwo: Bool){
		UIView.animate(withDuration: 1) { [ unowned self] in
			let radians = CGFloat(180 * Double.pi/180)
			let tapOne = CGAffineTransform(rotationAngle: radians)
			let tapTwo = CGAffineTransform.identity
			self.arrowAnimationImageView.transform = oneOrTwo ? tapTwo : tapOne
		}
	}
}
