//
//  CountryCollectionViewCell.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CountryCollectionViewCell: UICollectionViewCell, ConfigurableCell {
 
  @IBOutlet var countryNameLabel: UILabel!

  func configureForObject(country: Country) {
    countryNameLabel.text = country.name
  }
  
  static func reuseIdentifier() -> String {
    return "CountryCollectionViewCell"
  }
  
}
