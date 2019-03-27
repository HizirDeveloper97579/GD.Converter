//
//  CurrenciesFunction.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

// MARK: - Functions
extension CurrenciesViewController {

	public func setupSelfController(){
		currenciesSearchBar.returnKeyType = .done
		//delegate
		self.transitioningDelegate = self
		//get dictionary and array flags list name
		CurrenciesModel.sorted {(currencyDictionary) in
			self.currencyDictionary = currencyDictionary
		}
	}
	//настроики хедера таблицы
	public func setupHeaderTableView(tableView: UITableView, section: Int) -> UIView {
		let view             = UIView()
		let label            = UILabel()
		label.textColor      = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.backgroundColor = #colorLiteral(red: 0.2055564224, green: 0.1269926383, blue: 0.4187024112, alpha: 1)
		view.frame           = CGRect(x: 19, y: 0, width: tableView.frame.width, height: 44)
		label.frame          = view.frame
		label.text           = searchCurrencies.isEmpty ?
													 currencyDictionary[section].key :
													 searchCurrencies[section].key
		view.addSubview(label)
	return view
	}
}
