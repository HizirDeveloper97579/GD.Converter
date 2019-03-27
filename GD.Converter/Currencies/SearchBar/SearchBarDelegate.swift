//
//  SearchBarDelegate.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 12/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit
//MARK: - Delegate SearchBar
extension CurrenciesViewController: UISearchBarDelegate {
	func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
		filterSearch(text: searchText)
	}
	func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
		currenciesSearchBar.placeholder = "Search"
		currenciesSearchBar.endEditing(true)
	}
	func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
		searchBar.placeholder = "Search"
		currenciesSearchBar.resignFirstResponder()
	}
	func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
		searchBar.placeholder = "Search"
		currenciesSearchBar.endEditing(true)
	}
	func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
		searchBar.placeholder = ""
		return true
	}
}
