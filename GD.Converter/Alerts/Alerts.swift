//
//  Alerts.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 18/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

class Alerts {
	//алерт предупреждение если нет интернета
	static func network(vc: UIViewController){
		let alert = UIAlertController(title: StringProject.alertNotNetwork.rawValue, message: nil, preferredStyle: .alert)
		vc.present(alert, animated: true)
		vc.view.isUserInteractionEnabled = false
		vc.view.alpha = 0.5
	}
}
