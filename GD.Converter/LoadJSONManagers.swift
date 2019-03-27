//
//  LoadJSONManagers.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import Foundation
import Alamofire

class LoadJSONManager<T: Decodable> : SessionTransferData {
	
	func transferData(stringURL: String, parameters: Parameters? = nil , complition: @escaping Clousure<Any>) {
		session(stringURL: stringURL, parameters: parameters) {(data) in
			do{
				let json = try JSONDecoder().decode(T.self, from: data)
				complition(json)
			}catch let error {
				print(error.localizedDescription, "Error parse JSON ")
			}
		}
	}
}

