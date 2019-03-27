//
//  iPhoneX_XSConverterConstraint.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class iPhoneX_XSConverterConstraint: ConverterConstrainsProtocol {
	
	var converter: ConverterConstrains!
	
	func constraintSet() {
		//MARK: - GlassView
		converter.glassView.glassViewHeightConstraint.constant = 246
		//MARK: - Buttons
		converter.buttons.buttonsHeightConstraint.constant = 113.4
		converter.buttons.buttonsTopConstraint   .constant = 18
		converter.buttons.buttonsLsRsConstraint.forEach{$0.constant = 10}
		//MARK: - FieldLabels
		converter.fieldLabels.fieldLabelsHeightConstraint.constant = 39
		converter.fieldLabels.fieldLabelsTopConstraint   .constant = 16.9
		converter.fieldLabels.fieldLabelsRsConstraint.forEach{$0.constant = 15}
		//MARK: -DataLabels
		converter.dataLabels.dataLabellsRsConstraint  .forEach{$0.constant = 15}
		converter.dataLabels.dataLabelTopConstraint   .constant = 15.5
		converter.dataLabels.dataLabelBottomConstraint.constant = 26
		//MARK: - Keyboard
		converter.keyBoard.keyBoardMarginsConstraint.forEach{$0.constant = 12}
		converter.keyBoard.keyBoardBottomConstraint .constant = 39
		// MARK: - Set iamge KeyBoard
		converter.imageKeyBoard.keyBoardImageView.image = #imageLiteral(resourceName: "Numeric Copy")
		//MARK: - Spacing
		converter.spacingStakView.buttonsStakView   .spacing = 27.3
		converter.spacingStakView.fieldLabelStakView.spacing = 38
		converter.spacingStakView.dataLabelStakView .spacing = 36
	}
	init(converter: ConverterConstrains) {
		self.converter = converter
		self.constraintSet()
	}
}
