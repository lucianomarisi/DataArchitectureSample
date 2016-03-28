//
//  MassiveViewController.swift
//  DataArchitectureSample
//
//  Created by Luciano Marisi on 26/03/2016.
//  Copyright © 2016 Luciano Marisi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CustomTableViewCell"

final class MassiveViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  private let countries: [Country] = Country.allCountries()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    let customCellNib = UINib(nibName: "\(CustomTableViewCell.self)", bundle: nil)
    tableView.registerNib(customCellNib, forCellReuseIdentifier: reuseIdentifier)
  }
  
  //MARK: UITableViewDataSource
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as? CustomTableViewCell else {
      fatalError("Could not dequeue cell with identifier: \(reuseIdentifier)")
    }
    let country = countries[indexPath.row]
    cell.countryNameLabel?.text = country.name
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countries.count
  }

}