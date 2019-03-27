//
//  CurrenciesTableViewCell.swift
//  ExchangeRatesGD
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class CurrenciesTableViewCell: UITableViewCell {

	@IBOutlet weak private var flagImageView  : UIImageView!
	@IBOutlet weak private var currentciesCode: UILabel!
	@IBOutlet weak var checkmarkImageView     : UIImageView!
	
	public func configureCell(name: String, nameIamge: String){
		self.currentciesCode.text = name
		self.flagImageView.image  = UIImage(named: nameIamge)
	}
}
