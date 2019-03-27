//
//  SearchBarSetup.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 12/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: - SetupSearchBar
extension CurrenciesViewController {
	
	public func filterSearch(text: String){
		searchCurrencies.removeAll()
		if let literal = text.first {
			let oneDictionary = currencyDictionary.filter{$0.key == String(literal)}
			if let searchArray = oneDictionary.first?.value.filter({$0.lowercased().contains(text.lowercased())}) {
				var searchDictionary = (key: String(), value: [String]())
				searchDictionary.key = oneDictionary.first!.key
				searchDictionary.value = searchArray
				searchCurrencies.append(searchDictionary)
			}
		} else {
			searchCurrencies.removeAll()
		}
		self.controllerTableView.reloadData()
	}
}
