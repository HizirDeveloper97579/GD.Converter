//
//  Typealiase.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

typealias ClousureStrings = ((String, String) -> Void)
typealias ClousureString  = ((String) -> Void)
typealias ClousureData    = ((Data) -> Void)
typealias Clousure<T>     = ((T) -> Void)
typealias ClousureCartage = ((Array<(key: String, value: [String])>) -> Void)
typealias ReturnDismiss   = (from: CurrenciesViewController, to: ConverterViewController)
typealias ReturnPresented = (from: ConverterViewController , to: CurrenciesViewController)
typealias ReturnGetData   = (activity: Bool, currencyOne: String, currencyTwo: String, oneLabel: String, twoLabel: String)

