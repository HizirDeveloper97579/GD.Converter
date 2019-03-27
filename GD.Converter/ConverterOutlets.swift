//
//  ConverterOutlets.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, ConverterProtocol {
	//MARK: --- VARIBELS
	public var currencyOneOrTwo = Int()
	public var currencyOne 			= String()
	public var currencyTwo 			= String()
	public var activityOneLabel = true
	public var saveGetData      = ConvertSaveGetData()
	public var converterTwo     : Converter<ResultConverter>!
	public var converterOne     : Converter<ResultConverter>!
	public var constraints      : ChangeConstraints!
	//the label changes depending on the input amount
	public var changesLabel      : ChangesLabel! = nil
	//MARK: --- OUTLETS
	@IBOutlet public var arrowAnimationImageView    : UIImageView!
	@IBOutlet public var animationTransitionView    : UIView!
	@IBOutlet public var keyBoardImageView          : UIImageView!
	@IBOutlet public var activityIndicator          : UIActivityIndicatorView!
	@IBOutlet public var oneFlagButton              : UIButton!
	@IBOutlet public var twoFlagButton              : UIButton!
	@IBOutlet public var oneDataLabel              	: UILabel!
	@IBOutlet public var twoDataLabel              	: UILabel!
	@IBOutlet public var oneFieldLabel              : UILabel!
	@IBOutlet public var twoFieldLabel              : UILabel!
	// MARK: - glassView
	@IBOutlet public var glassViewHeightConstraint  : NSLayoutConstraint!
	// MARK: - keyBoard
	@IBOutlet public var keyBoardBottomConstraint   : NSLayoutConstraint!
	@IBOutlet public var keyBoardMarginsConstraint  : [NSLayoutConstraint]!
	// MARK: - buttons
	@IBOutlet public var buttonsTopConstraint       : NSLayoutConstraint!
	@IBOutlet public var buttonsHeightConstraint    : NSLayoutConstraint!
	@IBOutlet public var buttonsLsRsConstraint      : [NSLayoutConstraint]!
	// MARK: - fieldLabels
	@IBOutlet public var fieldLabelsTopConstraint   : NSLayoutConstraint!
	@IBOutlet public var fieldLabelsHeightConstraint: NSLayoutConstraint!
	@IBOutlet public var fieldLabelsRsConstraint    : [NSLayoutConstraint]!
	// MARK: - dataLabels
	@IBOutlet public var dataLabelBottomConstraint  : NSLayoutConstraint!
	@IBOutlet public var dataLabelTopConstraint     : NSLayoutConstraint!
	@IBOutlet public var dataLabellsRsConstraint    : [NSLayoutConstraint]!
	//MARK:  - StackView
	@IBOutlet public var buttonsStackView           : UIStackView!
	@IBOutlet public var fieldLabelsStackView       : UIStackView!
	@IBOutlet public var dataLabelStackView         : UIStackView!
	
}
