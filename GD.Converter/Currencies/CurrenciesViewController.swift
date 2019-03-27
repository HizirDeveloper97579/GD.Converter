//
//  CurrenciesViewController.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class CurrenciesViewController: UIViewController {
	//MARK: --- VARIBELS
	public var searchCurrencies   = [(key: String, value: [String])]()
	public var currencyDictionary = [(key: String, value: [String])]()
	public var selectedCurrency   = String()
	public var currencyOneOrTwo   = Int()
	//delegate
	static var delegate: ConverterProtocol!
	//MARK: --- OUTLETS
	@IBOutlet weak var controllerTableView: UITableView!
	@IBOutlet weak var currenciesSearchBar: UISearchBar!
	@IBOutlet weak var viewHeaderView     : UIView!
	@IBOutlet weak var viewTableViewView  : UIView!
	//MARK: --- LOAD
	override func viewDidLoad() {
		super.viewDidLoad()
		setupSelfController()
	}
}
