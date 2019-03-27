//
//  ChangeConstraintProtocol.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

protocol ConverterConstrainsProtocol {
	
	var converter: ConverterConstrains! { get set }
	
	func constraintSet()
}
