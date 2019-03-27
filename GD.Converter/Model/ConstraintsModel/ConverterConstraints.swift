//
//  ConverterConstraints.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 18/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class ConverterConstrains {
	
	var glassView      : ConverterGlassView!
	var keyBoard       : ConverterKeyBoard!
	var buttons        : ConverterButtons!
	var fieldLabels    : ConverterFieldLabels!
	var dataLabels     : ConverterDataLabels!
	var spacingStakView: SpacingStakView!
	var imageKeyBoard  : ImageKeyBoard!
	
	init(glassView: ConverterGlassView, keyBoard: ConverterKeyBoard, buttons: ConverterButtons, fieldLabels: ConverterFieldLabels, dataLabels: ConverterDataLabels, spacingStakView: SpacingStakView, imageKeyBoard: ImageKeyBoard) {
		self.glassView       = glassView
		self.keyBoard        = keyBoard
		self.buttons         = buttons
		self.fieldLabels     = fieldLabels
		self.dataLabels      = dataLabels
		self.spacingStakView = spacingStakView
		self.imageKeyBoard   = imageKeyBoard
	}
}
// MARK: - GlassView
class ConverterGlassView {
	
	public var glassViewHeightConstraint: NSLayoutConstraint!
	
	init(_ glassViewHeightConstraint: NSLayoutConstraint) {
		self.glassViewHeightConstraint = glassViewHeightConstraint
	}
}
// MARK: - Keyboard
class ConverterKeyBoard {
	
	public var keyBoardBottomConstraint : NSLayoutConstraint!
	public var keyBoardMarginsConstraint: [NSLayoutConstraint]!
	
	init(_ keyBoardBottomConstraint: NSLayoutConstraint, _ keyBoardMarginsConstraint: [NSLayoutConstraint]) {
		self.keyBoardBottomConstraint  = keyBoardBottomConstraint
		self.keyBoardMarginsConstraint = keyBoardMarginsConstraint
	}
}
// MARK: - ButtonsFlags
class ConverterButtons{
	
	public var buttonsHeightConstraint: NSLayoutConstraint!
	public var buttonsTopConstraint   : NSLayoutConstraint!
	public var buttonsLsRsConstraint  : [NSLayoutConstraint]!
	
	init(_ buttonsTopConstraint: NSLayoutConstraint, _ buttonsLsRsConstraint: [NSLayoutConstraint], _ buttonsHeightConstraint: NSLayoutConstraint){
		self.buttonsTopConstraint    = buttonsTopConstraint
		self.buttonsLsRsConstraint   = buttonsLsRsConstraint
		self.buttonsHeightConstraint = buttonsHeightConstraint
	}
}
// MARK: - FieldLabels
class ConverterFieldLabels{
	
	public var fieldLabelsHeightConstraint: NSLayoutConstraint!
	public var fieldLabelsTopConstraint   : NSLayoutConstraint!
	public var fieldLabelsRsConstraint    : [NSLayoutConstraint]!
	
	init(_ fieldLabelsHeightConstraint: NSLayoutConstraint, _ fieldLabelsTopConstraint: NSLayoutConstraint, _ fieldLabelsRsConstraint: [NSLayoutConstraint]){
		self.fieldLabelsHeightConstraint = fieldLabelsHeightConstraint
		self.fieldLabelsTopConstraint    = fieldLabelsTopConstraint
		self.fieldLabelsRsConstraint     = fieldLabelsRsConstraint
	}
}
// MARK: - DataField
class ConverterDataLabels{
	public var dataLabelBottomConstraint: NSLayoutConstraint!
	public var dataLabelTopConstraint   : NSLayoutConstraint!
	public var dataLabellsRsConstraint  : [NSLayoutConstraint]!
	
	init(_ dataLabelTopConstraint: NSLayoutConstraint, _ dataLabellsRsConstraint: [NSLayoutConstraint], _ dataLabelBottomConstraint: NSLayoutConstraint){
		self.dataLabelTopConstraint    = dataLabelTopConstraint
		self.dataLabellsRsConstraint   = dataLabellsRsConstraint
		self.dataLabelBottomConstraint = dataLabelBottomConstraint
	}
}
//MARK: - SpacingStakView
class SpacingStakView {
	
	public var buttonsStakView   : UIStackView!
	public var fieldLabelStakView: UIStackView!
	public var dataLabelStakView : UIStackView!
	
	init(_ buttonsStakView: UIStackView, _ fieldLabelStakView: UIStackView, _ dataLabelStakView: UIStackView){
		self.buttonsStakView    = buttonsStakView
		self.fieldLabelStakView = fieldLabelStakView
		self.dataLabelStakView  = dataLabelStakView
	}
}
// MARK: Image set KeyBoard
class ImageKeyBoard {
	
	let keyBoardImageView: UIImageView!
	
	init(_ keyBoardImageView: UIImageView) {
		self.keyBoardImageView = keyBoardImageView
	}
}
