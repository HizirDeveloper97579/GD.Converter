//
//  Extension + UIView .swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 11/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension UIView {
	
	func shadowAndCornerRadius(_ Cr: CGFloat = 9, _ ShR: CGFloat = 9, _ cToB: Bool = true){
		self.layer.cornerRadius  = Cr
		self.layer.shadowRadius  = ShR
		self.layer.shadowOpacity = 1
		self.layer.shadowOffset  = CGSize(width: 2, height: 3)
		self.clipsToBounds       = cToB
	}
	func borderColor(_ Bc: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), _ Bw: CGFloat = 1){
		self.layer.borderColor  = Bc.cgColor
		self.layer.borderWidth  = Bw
	}
}
