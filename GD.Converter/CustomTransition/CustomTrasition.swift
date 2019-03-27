//
//  CustomTrasition.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 14/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

var animatingDuration: Double = 1

//MARK: - Self Calss CustomTrasition
class CustomTrasition: NSObject {
	
	fileprivate var transitionMode : AnimatingType = .presented
	public var transitionLeftOrRight: Int!
	
	enum AnimatingType {
		case presented
		case dismissed
	}
	
	init(transition: AnimatingType, transitionLeftOrRight: Int){
		self.transitionMode        = transition
		self.transitionLeftOrRight = transitionLeftOrRight
	}
}

//MARK: - Delegate CustomTrasition
extension CustomTrasition: UIViewControllerAnimatedTransitioning {
	
	func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
		return animatingDuration
	}
	
	func animateTransition(using transitionContext: UIViewControllerContextTransitioning){
		
		switch transitionMode {
		case .presented:
			pressented(transition: transitionContext)
		case .dismissed:
			dismissed(transition: transitionContext)
		}
	}

}



