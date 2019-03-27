//
//  ConverterModel.swift
//  Converter
//
//  Created by -=HIZIR=- on 27/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit


//MARK: - Class test valid JSON format data ResultConverter ,
//return amount currency before converter  from CurrencyOne to CurrencyTwo
class CheckJSON {
	
	//MARK: - test valid get JSON
	static func resultConvert(result: Any) -> String {
		guard let resultConverter = result as? ResultConverter else { return "" }
		guard let resultAmount    = resultConverter.result else { return " " }
		var resultAmountstring = String(Float(resultAmount))
		resultAmountstring.removeLast(2)
		return resultAmountstring
	}
}
//MARK: - Class save and Get las data converter
class ConvertSaveGetData {
	
	private(set) var activityLabel = Bool()
	private(set) var currencyOne 	 = String()
	private(set) var currencyTwo 	 = String()
	private(set) var oneFieldLabel = String()
	private(set) var twoFieldLabel = String()
	
	//MARK: - Save last data which converter
	func getLastData() -> ReturnGetData? {
		
		activityLabel = UserDefaults.standard.bool(forKey: "activityOneLabel")
		
		guard let one = UserDefaults.standard.string(forKey: "currencyOne") else { return nil }
		self.currencyOne = one
		
		guard let two = UserDefaults.standard.string(forKey: "currencyTwo") else { return nil }
		self.currencyTwo = two
		
		guard let oneL = UserDefaults.standard.string(forKey: "oneFieldLabel") else { return nil }
		self.oneFieldLabel = oneL
		
		guard let twoL = UserDefaults.standard.string(forKey: "twoFieldLabel") else { return nil }
		self.twoFieldLabel = twoL
		
		return (activityLabel, currencyOne, currencyTwo, oneFieldLabel, twoFieldLabel)
	}
	//MARK: - Save last data which converter
	func saveLastData(saveData: ReturnGetData){
		UserDefaults.standard.set(saveData.currencyOne, forKey: "currencyOne")
		UserDefaults.standard.set(saveData.currencyTwo, forKey: "currencyTwo")
		UserDefaults.standard.set(saveData.activity   , forKey: "activityOneLabel")
		UserDefaults.standard.set(saveData.oneLabel   , forKey: "oneFieldLabel")
		UserDefaults.standard.set(saveData.twoLabel   , forKey: "twoFieldLabel")
	}
}

class ChangesLabel {
	
	private let oneLabel : UILabel!
	private let twoLabel : UILabel!
	
	//MARK:  - Returns a label to which to enter data
	func used(_ activity: Bool) -> UILabel {
		switch activity {
		case true:
			return oneLabel
		case false:
			return twoLabel
		}
	}
	func usedGuard(_ activity: Bool) -> UILabel? {
		switch activity {
		case true:
			guard let text = oneLabel.text, text != "" else { return nil }
			return oneLabel
		case false:
			guard let text = twoLabel.text, text != "" else { return nil }
			return twoLabel
		}
	}
	init(_ oneLabel: UILabel, _ twoLabel: UILabel) {
		self.oneLabel = oneLabel
		self.twoLabel = twoLabel
	}
}

class Converter<T: Decodable> {
	
	private let toName  : String!
	private let fromName: String!
	
	private let loadJSON = LoadJSONManager<T>()
	
	public func perform(amount: String, result: @escaping ClousureString){
		let parameters = URLParameters.create(from: fromName, to: toName, amount: amount)
		self.loadJSON.transferData(stringURL: API.convert.rawValue, parameters: parameters)
		{(resultJSON) in
			result(CheckJSON.resultConvert(result: resultJSON))
		}
	}
	
	init(from: String, to: String) {
		self.fromName = from
		self.toName  	= to
	}
}
//MARK: - Convert one unit of currency to one unit of second currency
struct ConverterOneToSecondCurrency {
	
	private let JSONManager    = LoadJSONManager<ResultConverter>()
	private let amauntCurrency = "1 "
	private let twoCurrency    : String!
	private let oneCurrency    : String!
	
	//MARK: - Create Name for label text info
	public func createName( complition: @escaping ClousureString){
		self.fetchData {(resultAmount) in
			let name = "1 " + self.twoCurrency + " = " + resultAmount + " " + self.oneCurrency
			complition(name)
		}
	}
	//MARK: - Fetch summa One Currency for Two Currency
	private func fetchData(complition: @escaping ClousureString){
		let parameters = URLParameters.create(from: oneCurrency, to: twoCurrency, amount: "1")
		JSONManager.transferData(stringURL: API.convert.rawValue, parameters: parameters){(result) in
			guard CheckJSON.resultConvert(result: result) != "" else { return }
			complition(CheckJSON.resultConvert(result: result))
		}
	}
	
	init(_ currencyTwoName: String, _ currencyOneName: String) {
		self.twoCurrency  = currencyTwoName
		self.oneCurrency  = currencyOneName
	}
	
}
