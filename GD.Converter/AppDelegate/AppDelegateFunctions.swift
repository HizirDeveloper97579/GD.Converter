//
//  AppDelegateFunctions.swift
//  Converter
//
//  Created by -=HIZIR=- on 27/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

struct AppDelegateFunction {
	
	static func router(window: inout UIWindow?){
		window = UIWindow(frame: UIScreen.main.bounds)
		let sb = UIStoryboard(name: UIStoryboard.ID.Converter.rawValue, bundle: nil)
		let converterViewController = sb.instantiateInitialViewController()
		window?.rootViewController  = converterViewController
		window?.makeKeyAndVisible()
	}
}
