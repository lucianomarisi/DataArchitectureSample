//
//  GenericTableViewDataCoordinator.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

class GenericTableViewDataCoordinator<CellType: UITableViewCell, DataProviderType: DataProvider where CellType: ConfigurableCell, CellType.DataObject == DataProviderType.DataObject> : NSObject, UITableViewDataSource {
  
  private let dataProvider: DataProviderType
  
  init(tableView: UITableView, dataProvider: DataProviderType) {
    self.dataProvider = dataProvider
    super.init()
    tableView.dataSource = self
  }

  //MARK: UITableViewDataSource
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCellWithIdentifier(CellType.reuseIdentifier()) as? CellType else {
      fatalError("Could not dequeue cell of type: \(CellType.self) with identifier: \(CellType.reuseIdentifier())")
    }
    
    if let object = dataProvider.objectAtIndexPath(indexPath) {
      cell.configureForObject(object)
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataProvider.numberOfItemsInSection(section)
  }
  
}