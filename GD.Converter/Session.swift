//
//  Session.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit
import Alamofire

protocol Session {
	func session(stringURL: String, parameters: Parameters?, complition: @escaping ClousureData)
}

extension Session {
	
	func session(stringURL: String, parameters: Parameters?, complition: @escaping ClousureData){
		// Fetch Request
		AF.request(stringURL, method: .get, parameters: parameters).validate(statusCode: 200..<300).response{(response) in
			if let error = response.result.error  {
				print("HTTP Response error : " + "\(error.localizedDescription)")
			} else {
				guard let data = response.data else { return }
				complition(data)
			}
		}
	}
}
