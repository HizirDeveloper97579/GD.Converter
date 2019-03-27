//
//  ConverterNavigation.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 25/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: Navigation
extension ConverterViewController {
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		(segue.destination as! CurrenciesViewController).currencyOneOrTwo = currencyOneOrTwo
	}
}
