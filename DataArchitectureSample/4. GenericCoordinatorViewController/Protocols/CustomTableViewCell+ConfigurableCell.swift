//
//  CountryTableViewCell+ConfigurableCell.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 28/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import Foundation

extension CountryTableViewCell: ConfigurableCell {
  func configureForObject(country: Country) {
    countryNameLabel.text = country.name
  }
  
  static func reuseIdentifier() -> String {
    return "CountryTableViewCell"
  }
}