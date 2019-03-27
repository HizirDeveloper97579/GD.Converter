//
//  ResultConverter.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 13/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import Foundation

struct ResultConverter: Decodable {
	
	let success: Bool?
	let terms  : String?
	let privacy: String
	let query  : Query?
	let info   : Info?
	let result : Double?
}

struct Query: Decodable {
	
	let from  : String?
	let to    : String?
	let amount: Double?
}

struct Info: Decodable {
	
	let timestamp: Double?
	let quote    : Double?
}



