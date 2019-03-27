//
//  iPhone5ConverterConstraints.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class iPhone5ConverterConstraints: ConverterConstrainsProtocol {
	
	var converter: ConverterConstrains!
	
	func constraintSet() {
		//MARK: - GlassView
		converter.glassView.glassViewHeightConstraint.constant = 194
		//MARK: - Buttons
		converter.buttons.buttonsHeightConstraint.constant = 99
		converter.buttons.buttonsTopConstraint   .constant = 18
		converter.buttons.buttonsLsRsConstraint.forEach{$0.constant = 6}
		//MARK: - FieldLabels
		converter.fieldLabels.fieldLabelsHeightConstraint.constant = 34
		converter.fieldLabels.fieldLabelsTopConstraint   .constant = 6
		converter.fieldLabels.fieldLabelsRsConstraint.forEach{$0.constant = 10}
		//MARK: -DataLabels
		converter.dataLabels.dataLabellsRsConstraint.forEach{$0.constant = 10}
		converter.dataLabels.dataLabelTopConstraint   .constant = 10
		converter.dataLabels.dataLabelBottomConstraint.constant = 11
		//MARK: - Keyboard
		converter.keyBoard.keyBoardBottomConstraint.constant = 29
		converter.keyBoard.keyBoardMarginsConstraint.forEach{$0.constant = 6}
		// MARK: - Set iamge KeyBoard
		converter.imageKeyBoard.keyBoardImageView.image = #imageLiteral(resourceName: "Numeric")
		//MARK: - Spacing
		converter.spacingStakView.buttonsStakView   .spacing = 22
		converter.spacingStakView.fieldLabelStakView.spacing = 32
		converter.spacingStakView.dataLabelStakView .spacing = 32
		
	}
	init(converter: ConverterConstrains) {
		self.converter = converter
		self.constraintSet()
	}
}
