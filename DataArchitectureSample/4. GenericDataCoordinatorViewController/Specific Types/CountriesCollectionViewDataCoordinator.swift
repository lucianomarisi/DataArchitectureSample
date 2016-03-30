//
//  CountriesCollectionViewDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

final class CountriesCollectionViewDataCoordinator : GenericCollectionViewDataCoordinator<CountriesDataProvider, CountryCollectionViewCell> {
  
  init(collectionView: UICollectionView, countriesDataProvider: CountriesDataProvider = CountriesDataProvider()) {
    let customCellNib = UINib(nibName: "\(CountryCollectionViewCell.self)", bundle: nil)
    collectionView.registerNib(customCellNib, forCellWithReuseIdentifier: CountryCollectionViewCell.reuseIdentifier())
    super.init(collectionView: collectionView, dataProvider: countriesDataProvider)
  }
  
}