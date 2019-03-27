//
//  Extension + UIResponder.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension UIResponder {
	
	//идентификатор для ячеек (tableViewCell/collectionViewCell/UIVewController)
	static var identifire: String {
		get{
			return String(describing: self)
		}
	}
}
