//
//  iPhone7ConverterConstraints.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class iPhone7ConverterConstrains: ConverterConstrainsProtocol {
	
	var converter: ConverterConstrains!
	
	func constraintSet() {
		
		//MARK: - GlassView
		converter.glassView.glassViewHeightConstraint.constant = 246
		//MARK: - Buttons
		converter.buttons.buttonsHeightConstraint.constant = 115
		converter.buttons.buttonsTopConstraint   .constant = 18
		converter.buttons.buttonsLsRsConstraint.forEach{$0.constant = 10}
		//MARK: - FieldLabels
		converter.fieldLabels.fieldLabelsHeightConstraint.constant = 35
		converter.fieldLabels.fieldLabelsTopConstraint   .constant = 16.9
		converter.fieldLabels.fieldLabelsRsConstraint.forEach{$0.constant = 14.6}
		//MARK: -DataLabels
		converter.dataLabels.dataLabellsRsConstraint  .forEach{$0.constant = 14.6}
		converter.dataLabels.dataLabelTopConstraint   .constant = 15.5
		converter.dataLabels.dataLabelBottomConstraint.constant = 20
		//MARK: - Keyboard
		converter.keyBoard.keyBoardMarginsConstraint.forEach{$0.constant = 5}
		converter.keyBoard.keyBoardBottomConstraint.constant = 39
		// MARK: - Set iamge KeyBoard
		converter.imageKeyBoard.keyBoardImageView.image = #imageLiteral(resourceName: "Numeric")
		//MARK: - Spacing
		converter.spacingStakView.buttonsStakView   .spacing = 26.3
		converter.spacingStakView.fieldLabelStakView.spacing = 36.7
		converter.spacingStakView.dataLabelStakView .spacing = 36.7
	}
	init(converter: ConverterConstrains) {
		self.converter = converter
		self.constraintSet()
	}
}
