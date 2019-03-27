//
//  CurrenciesCustomTransition.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 14/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension CurrenciesViewController: UIViewControllerTransitioningDelegate {
	
	func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return  CustomTrasition(transition: .dismissed, transitionLeftOrRight: self.currencyOneOrTwo)
	}
	
	func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return  CustomTrasition(transition: .presented, transitionLeftOrRight: self.currencyOneOrTwo)
	}
}
