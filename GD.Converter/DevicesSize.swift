//
//  DevicesSize.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 15/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//
import UIKit

//MARK: - Размер диваисов
struct DevicesSize {
	//деваис
	static func devaice(selfView: UIView) -> Device {
		switch selfView.frame.height {
		//iPhone 5-ка
		case 560...570:
			return .iPhone5
		//iPhone 7-ка
		case 660...670:
			return .iPhone7
		//iPhone Plus
		case 730...740:
			return .iPhonePlus
		//iPhone X-XS
		case 810...820:
			return .iPhoneX
		//iPhone XR-XS max
		case 890...900:
			return .iPhoneXR
		default:
			return .iPhoneXR
		}
	}
}
enum Device {
	case iPhone5
	case iPhone7
	case iPhonePlus
	case iPhoneX
	case iPhoneXR
}
