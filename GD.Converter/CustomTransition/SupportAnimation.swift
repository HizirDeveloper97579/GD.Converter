//
//  SupportAnimation.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 16/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension CustomTrasition {

	public func contextPresented(transition context: UIViewControllerContextTransitioning) -> ReturnPresented {
		
		let curenciesTo   = context.viewController(forKey: .to)
		let converterFrom = context.viewController(forKey: .from)
		
		let curencies = curenciesTo   as! CurrenciesViewController
		let converter = converterFrom as! ConverterViewController
		
		//add view in context
		context.containerView.addSubview(converter.view)
		context.containerView.addSubview(curencies.view)
		context.containerView.insertSubview(curencies.view, aboveSubview: curencies.viewTableViewView)
		
		return (converter, curencies)
	}
	
	public func contextDismiss(transition context: UIViewControllerContextTransitioning) -> ReturnDismiss {
		
		let curenciesFrom = context.viewController(forKey: .from)
		let converterTo   = context.viewController(forKey: .to)
		
		let converter = converterTo   as! ConverterViewController
		let curencies = curenciesFrom as! CurrenciesViewController
		
		//add view in context
		context.containerView.addSubview(converter.view)
		context.containerView.addSubview(curencies.view)
		
		let heightTransform = converter.view.frame.height + 100
		
		converter.animationTransitionView.transform = CGAffineTransform(translationX: 0, y: heightTransform)
		
	return (curencies, converter)
	}
	
}
