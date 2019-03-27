//
//  Exyension + UIFont.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 15/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension UIFont {
	
	static func appleCDGothicNeo(size: CGFloat) -> UIFont {
		guard let font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: size) else {
			return UIFont.boldSystemFont(ofSize:30)
		}
	return font
	}
	static func ArialMT(size: CGFloat) -> UIFont {
		guard let font = UIFont(name: "ArialMT", size: size) else {
			return UIFont.boldSystemFont(ofSize:30)
		}
		return font
	}
}
