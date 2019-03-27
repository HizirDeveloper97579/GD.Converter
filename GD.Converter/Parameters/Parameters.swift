//
//  Parameters.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import Foundation
import Alamofire

struct URLParameters {
	
	enum Key: String {
		case access_key
		case from
		case to
		case amount
	}
	enum Value: String {
		case apiID = "d5b46cc31dd509f8cda7dfac56e43ec5"
	}
	static func create(_ activityLabel: Bool = true, from: String, to: String, amount: String) -> Parameters {
		
		let parameters = Parameters(dictionaryLiteral:
																(Key.access_key.rawValue ,Value.apiID.rawValue),
																(Key.from.rawValue       ,activityLabel ? from : to),
																(Key.to.rawValue         ,activityLabel ? to : from),
																(Key.amount.rawValue     ,amount))
	return parameters
	}
}
