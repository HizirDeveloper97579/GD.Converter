//
//  ChangeiPhoneConstraints.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class ChangeConstraints {
	
	let converterConstrains: ConverterConstrains!
	var typeDevice         : ConverterConstrainsProtocol!
	var view               : UIView!
	
	func set(){
		switch DevicesSize.devaice(selfView: self.view){
		case .iPhone5:
			typeDevice = iPhone5ConverterConstraints      (converter: converterConstrains)
		case .iPhone7:
			typeDevice = iPhone7ConverterConstrains       (converter: converterConstrains)
		case .iPhonePlus:
			typeDevice = iPhonePlusConverterConstraint    (converter: converterConstrains)
		case .iPhoneX:
			typeDevice = iPhoneX_XSConverterConstraint    (converter: converterConstrains)
		case .iPhoneXR:
			typeDevice = iPhoneXR_XMaxConverterConstraints(converter: converterConstrains)
		}
	}
	
	init(converterConstrains: ConverterConstrains, selfView: UIView ){
		self.converterConstrains = converterConstrains
		self.view                = selfView
	}
}


