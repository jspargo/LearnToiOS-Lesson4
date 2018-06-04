//
//  ViewController.swift
//  LearnToiOS-Lesson4
//
//  Created by Mike Robinson on 04/06/2018.
//  Copyright © 2018 Mike Robinson. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

  let modelController = ModelController.shared
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.modelController.itemCount
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    
    let name = self.modelController.nameOfItem(at: indexPath.row)
    cell.textLabel?.text = name
    
    self.modelController.loadAvatarImageOfItem(at: indexPath.row) { image, row in
      if row == indexPath.row {
        cell.imageView?.image = image
      }
    }
    
    return cell
  }

}

