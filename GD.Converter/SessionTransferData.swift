//
//  SessionTransferData.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import Foundation
import Alamofire

protocol SessionTransferData: Session {
	
	func transferData(stringURL: String, parameters: Parameters?, complition: @escaping Clousure<Any>)
}

