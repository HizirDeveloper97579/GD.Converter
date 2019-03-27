//
//  ConverterAction.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 11/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

// MARK: - Actions
extension ConverterViewController {
	@IBAction func currenciesVC(_ sender: UIButton){
		self.currencyOneOrTwo = sender.tag
		self.performSegue(withIdentifier: ID.SgConverter_Currencies.rawValue, sender: nil)
	}
	@IBAction func oneTapGesture(_ sender: UITapGestureRecognizer){
		activityOneLabel = true
		self.setupLabelWhenEnterData()
		animateArrow(oneOrTwo: true)
	}
	@IBAction func twoTapGesture(_ sender: UITapGestureRecognizer){
		activityOneLabel = false
		self.setupLabelWhenEnterData()
		animateArrow(oneOrTwo: false)
	}
	@IBAction func numberButtons(_ sender: UIButton){
		changesLabel.used(activityOneLabel).text?.append(Character(sender.currentTitle!))
		converter()
	}
	@IBAction func dotButton(){
		guard !changesLabel.used(activityOneLabel).text!.contains(".") else { return }
		changesLabel.used(activityOneLabel).text!.append(Character("."))
		converter()
	}
	@IBAction func clearButton(){
		changesLabel.usedGuard(activityOneLabel)?.text?.removeLast()
		converter()
	}
}
