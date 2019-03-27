//
//  PresentedAnimation.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 16/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension CustomTrasition {
	
	public func pressented(transition context: UIViewControllerContextTransitioning){
		
		let controllers = self.contextPresented(transition: context)
		
		
		//before animation
		var widthTransform: CGFloat = 0
		switch self.transitionLeftOrRight {
		case 0:
			widthTransform = -controllers.to.viewTableViewView.frame.width - 100
		case 1:
			widthTransform = controllers.to.viewTableViewView.frame.width + 100
		default:
			break
		}
		
		controllers.to.viewTableViewView.transform = CGAffineTransform(translationX: widthTransform, y: 0)
		controllers.to.view.alpha = 0
		//after animation
		UIView.animateKeyframes(withDuration: animatingDuration, delay: 0, options: [.calculationModeCubic], animations: {
			UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.5, animations: {
				controllers.from.animationTransitionView.alpha = 0
				controllers.from.view.alpha = 0
				controllers.to.view.alpha = 1
			})
			UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
				controllers.to.viewTableViewView.transform = .identity
			})
		}){(finished) in
			controllers.from.animationTransitionView.alpha = 1
			controllers.from.view.alpha = 1
			context.completeTransition(finished)
		}
	}
}
