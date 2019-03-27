//
//  ConverterLifeCycle.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 17/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: - Live cycles
extension ConverterViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.setupSelfController()
	}
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		self.testNetworking()
	}
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		self.reloadBeforeChangeNewCurency()
	}
}
