//
//  CurrenciesTableView.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: --- DataSource
extension  CurrenciesViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return searchCurrencies.isEmpty ? currencyDictionary[section].value.count : searchCurrencies[section].value.count
	}
	func numberOfSections(in tableView: UITableView) -> Int {
		return  searchCurrencies.isEmpty ? currencyDictionary.count : searchCurrencies.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = tableView.dequeueReusableCell(withIdentifier: CurrenciesTableViewCell.identifire, for: indexPath) as! CurrenciesTableViewCell
		let codeNmae = searchCurrencies.isEmpty ? currencyDictionary[indexPath.section].value[indexPath.row] : searchCurrencies[indexPath.section].value[indexPath.row]
		cell.configureCell(name: codeNmae, nameIamge: getCodeCantry(indexPath: indexPath))
		return cell
	}
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return searchCurrencies.isEmpty ? currencyDictionary[section].key : searchCurrencies[section].key
	}
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		return self.setupHeaderTableView(tableView: tableView, section: section)
	}
}
//MARK: --- Delegate
extension  CurrenciesViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
		let cell = tableView.cellForRow(at: indexPath) as! CurrenciesTableViewCell
		cell.checkmarkImageView.image = #imageLiteral(resourceName: "Checkmark")
		//method delegate
		CurrenciesViewController.delegate.changeCurrency(selectedCurrency: getCodeCantry(indexPath: indexPath))
		self.currenciesSearchBar.resignFirstResponder()
		self.dismiss(animated: true)
	}
	private func getCodeCantry(indexPath: IndexPath) -> String{
		let value  = searchCurrencies.isEmpty ? currencyDictionary[indexPath.section].value[indexPath.row] : searchCurrencies[indexPath.section].value[indexPath.row]
		let firstElement  = CurrenciesModel.dictionaryCurrencies.filter{$0.value == value}.first
		guard let first = firstElement else { return "" }
	return first.key
	}
}




