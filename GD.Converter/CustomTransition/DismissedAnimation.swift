//
//  DismissedAnimation.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 16/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension CustomTrasition {
	
	public func dismissed(transition context: UIViewControllerContextTransitioning){
		
		let controllers = self.contextDismiss(transition: context)
		
		UIView.animateKeyframes(withDuration: animatingDuration, delay: 0, options: [], animations: {
			UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.5, animations: {
				controllers.from.view.alpha = 0
				controllers.to.view.alpha = 1
			})
			UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
				controllers.to.animationTransitionView.transform = .identity
			})
		}){(finished) in
			controllers.from.view.alpha = 1
			context.completeTransition(finished)
		}
	}
}
