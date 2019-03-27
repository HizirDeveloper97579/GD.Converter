//
//  Extension + UIViewController.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 12/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

extension UIViewController {
	
	func SegueStoryboard(returnVC: inout UIViewController, idStory: String) -> UIViewController {
		let stb = UIStoryboard(name: idStory, bundle: nil)
		returnVC = stb.instantiateInitialViewController()!
	return returnVC
	}
}
