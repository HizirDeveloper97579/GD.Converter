//
//  iPhoneXR_XMaxConverterConstraints.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class iPhoneXR_XMaxConverterConstraints: ConverterConstrainsProtocol {
	
	var converter: ConverterConstrains!
	
	func constraintSet() {
		//MARK: - GlassView
		converter.glassView.glassViewHeightConstraint.constant = 271
		//MARK: - Buttons
		converter.buttons.buttonsHeightConstraint.constant = 125
		converter.buttons.buttonsTopConstraint   .constant = 19
		converter.buttons.buttonsLsRsConstraint.forEach{$0.constant = 10}
		//MARK: - FieldLabels
		converter.fieldLabels.fieldLabelsHeightConstraint.constant = 43
		converter.fieldLabels.fieldLabelsTopConstraint   .constant = 18.5
		converter.fieldLabels.fieldLabelsRsConstraint.forEach{$0.constant = 16}
		//MARK: -DataLabels
		converter.dataLabels.dataLabellsRsConstraint  .forEach{$0.constant = 28}
		converter.dataLabels.dataLabelTopConstraint   .constant = 23
		converter.dataLabels.dataLabelBottomConstraint.constant = 25
		//MARK: - Keyboard
		converter.keyBoard.keyBoardMarginsConstraint.forEach{$0.constant = 13}
		converter.keyBoard.keyBoardBottomConstraint .constant = 59
		// MARK: - Set iamge KeyBoard
		converter.imageKeyBoard.keyBoardImageView.image = #imageLiteral(resourceName: "Numeric Copy")
		//MARK: - Spacing
		converter.spacingStakView.buttonsStakView   .spacing = 32
		converter.spacingStakView.fieldLabelStakView.spacing = 43
		converter.spacingStakView.dataLabelStakView .spacing = 57
	}
	init(converter: ConverterConstrains) {
		self.converter = converter
		self.constraintSet()
	}
}
