//
//  Extension + UIActivityindicator.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 18/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension UIActivityIndicatorView {
	
	//работа активити индикатора
	func show(on: Bool){
		isHidden = !on
		if !on {
			stopAnimating()
		} else {
			startAnimating()
		}
	}
}

