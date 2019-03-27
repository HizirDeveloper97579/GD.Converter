//
//  ConverterSetupFunctions.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 26/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: - Setup ConverterController functions
extension ConverterViewController {
	
	// MARK: - Setup self controller
	public func setupSelfController(){
		//MARK: - Constraints self controller
		constraintSetup()
		//delegate
		CurrenciesViewController.delegate = self
		changesLabel = ChangesLabel(oneFieldLabel, twoFieldLabel)
		self.getLastData()
		
		currencyOne = "EUR"
		currencyTwo = "USD"
		converterOne = Converter(from: currencyOne, to: currencyTwo)
		converterTwo = Converter(from: currencyTwo, to: currencyOne)
		activityIndicator.show(on: false)
	}
	
	// MARK: -Настройки констреинтов
	public func constraintSetup(){
		//parameters for Class the ConverterConstrains
		let glassView       = ConverterGlassView  (glassViewHeightConstraint)
		let keyBoard        = ConverterKeyBoard   (keyBoardBottomConstraint, keyBoardMarginsConstraint)
		let buttons         = ConverterButtons    (buttonsTopConstraint, buttonsLsRsConstraint, buttonsHeightConstraint)
		let fieldLabels     = ConverterFieldLabels(fieldLabelsHeightConstraint, fieldLabelsTopConstraint, fieldLabelsRsConstraint)
		let dataLabels      = ConverterDataLabels (dataLabelTopConstraint, dataLabellsRsConstraint, dataLabelBottomConstraint)
		let spacingStakView = SpacingStakView     (buttonsStackView, fieldLabelsStackView, dataLabelStackView)
		let imageKeyBoard   = ImageKeyBoard       (keyBoardImageView)
		
		let converterConstraint = ConverterConstrains(glassView      : glassView,
																									keyBoard       : keyBoard,
																									buttons        : buttons,
																									fieldLabels    : fieldLabels,
																									dataLabels     : dataLabels,
																									spacingStakView: spacingStakView,
																									imageKeyBoard  : imageKeyBoard)
		
		
		constraints = ChangeConstraints(converterConstrains: converterConstraint, selfView: self.view)
		constraints.set()
	}
	
	// MARK: - When the user enters the values in the fields the reaction occurs
	public func setupLabelWhenEnterData(){
		changesLabel.used(activityOneLabel).text?.removeAll()
		changesLabel.used(activityOneLabel).alpha = 0.9
		_ = activityOneLabel ? (oneFieldLabel.alpha = 1) : (twoFieldLabel.alpha = 1)
	}
}
