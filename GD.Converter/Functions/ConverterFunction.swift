//
//  ConverterFunction.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 12/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

// MARK: - ConverterFunction
extension ConverterViewController {
	
	// MARK: - Implementation protocol
	public func changeCurrency(selectedCurrency: String) {
		switch currencyOneOrTwo {
		case 0:
			currencyOne = selectedCurrency
		case 1:
			currencyTwo = selectedCurrency
		default:
			break
		}
		self.saveLastData()
	}
	//MARK: - Parce JSON converter (self)
	public func converter(){
		
		//test convert if not data
		guard guardEnterTextLabel() else { return  }
		
		switch self.activityOneLabel {
		case true:
			converterOne.perform(amount: self.oneFieldLabel.text!) {(result) in
				self.twoFieldLabel.text = result
				self.activityIndicator.show(on: false)
				self.saveLastData()
			}
		case false:
			converterTwo.perform(amount: self.twoFieldLabel.text!) {(result) in
				self.oneFieldLabel.text = result
				self.activityIndicator.show(on: false)
				self.saveLastData()
			}
		}
	}
	//MARK: - Test network  (use LifeCycle)
	public func testNetworking(){
		self.view.alpha = 1
		self.view.isUserInteractionEnabled = true
		guard !Reachability.shared.isConnectedToNetwork() else { return }
		Alerts.network(vc: self)
		self.view.isUserInteractionEnabled = false
		self.view.alpha = 0.5
	}
	//MARK: - Reload data before return Currencies VC  (use LifeCycle)
	public func reloadBeforeChangeNewCurency(){
		converterOne = Converter(from: currencyOne, to: currencyTwo)
		converterTwo = Converter(from: currencyTwo, to: currencyOne)
		oneFlagButton.setBackgroundImage(UIImage(named: currencyOne), for: .normal)
		twoFlagButton.setBackgroundImage(UIImage(named: currencyTwo), for: .normal)
		self.createDataForLabelData()
		self.converter()
	}
	//MARK: - Save last data which converter (use Setup)
	public func getLastData(){
		guard let data = self.saveGetData.getLastData() else { return }
		self.activityOneLabel   = data.activity
		self.currencyOne        = data.currencyOne
		self.currencyTwo        = data.currencyTwo
		self.oneFieldLabel.text = data.oneLabel
		self.twoFieldLabel.text = data.twoLabel
	}
	//MARK: - Save last data which converter
	public func saveLastData(){
		let saveData = (activityOneLabel, currencyOne, currencyTwo, oneFieldLabel.text!, twoFieldLabel.text!)
		self.saveGetData.saveLastData(saveData: saveData)
	}
	//MARK: - Check if the label is on text, zero or dot
	private func guardEnterTextLabel() -> Bool {
		guard changesLabel.used(activityOneLabel).text != ""   else { return false }
		guard changesLabel.used(activityOneLabel).text != "0"  else { return false }
		guard changesLabel.used(activityOneLabel).text != "0." else { return false }
		activityIndicator.show(on: true)
		return true
	}
	//MARK: - Create data for dataLabel
	private func createDataForLabelData(){
		//name one dataLabel
		ConverterOneToSecondCurrency(currencyOne, currencyTwo).createName {(dataText) in
			self.oneDataLabel.text  = dataText
		}
		//name two dataLabel
		ConverterOneToSecondCurrency(currencyTwo, currencyOne).createName {(dataText) in
			self.twoDataLabel.text  = dataText
		}
	}
}

