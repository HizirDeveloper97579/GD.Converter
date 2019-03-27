//
//  iPhonePlusConverterConstraint.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class iPhonePlusConverterConstraint: ConverterConstrainsProtocol {
	
	var converter: ConverterConstrains!
	
	func constraintSet() {
		//MARK: - GlassView
		converter.glassView.glassViewHeightConstraint.constant = 271.6
		//MARK: - Buttons
		converter.buttons.buttonsHeightConstraint.constant = 125.2
		converter.buttons.buttonsTopConstraint   .constant = 19.9
		converter.buttons.buttonsLsRsConstraint.forEach{$0.constant = 11}
		//MARK: - FieldLabels
		converter.fieldLabels.fieldLabelsHeightConstraint.constant = 43
		converter.fieldLabels.fieldLabelsTopConstraint   .constant = 18.6
		converter.fieldLabels.fieldLabelsRsConstraint.forEach{$0.constant = 17}
		//MARK: -DataLabels
		converter.dataLabels.dataLabellsRsConstraint  .forEach{$0.constant = 19}
		converter.dataLabels.dataLabelTopConstraint   .constant = 15.1
		converter.dataLabels.dataLabelBottomConstraint.constant = 30
		//MARK: - Keyboard
		converter.keyBoard.keyBoardMarginsConstraint.forEach{$0.constant = 7}
		converter.keyBoard.keyBoardBottomConstraint.constant = 59
		// MARK: - Set iamge KeyBoard
		converter.imageKeyBoard.keyBoardImageView.image = #imageLiteral(resourceName: "Numeric")
		//MARK: - Spacing
		converter.spacingStakView.buttonsStakView   .spacing = 30.2
		converter.spacingStakView.fieldLabelStakView.spacing = 41
		converter.spacingStakView.dataLabelStakView .spacing = 43
	}
	init(converter: ConverterConstrains) {
		self.converter = converter
		self.constraintSet()
	}
}
