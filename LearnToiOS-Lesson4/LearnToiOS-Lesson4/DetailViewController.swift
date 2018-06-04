//
//  DetailViewController.swift
//  LearnToiOS-Lesson4
//
//  Created by Mike Robinson on 04/06/2018.
//  Copyright © 2018 Mike Robinson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  var selectedIndexPath: IndexPath?
  let modelController = ModelController.shared
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var urlLabel: UILabel!
  @IBOutlet weak var sourceTypeLabel: UILabel!
  @IBOutlet weak var avatarImageView: UIImageView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    if let indexPath = selectedIndexPath {
      self.titleLabel.text = modelController.nameOfItem(at: indexPath.row)
      self.descriptionLabel.text = modelController.descriptionOfItem(at: indexPath.row)
      self.urlLabel.text = modelController.urlStringOfItem(at: indexPath.row)
      self.sourceTypeLabel.text = modelController.isPrivateItem(at: indexPath.row) ? "Closed Source" : " OpenSource"
      
      modelController.loadAvatarImageOfItem(at: indexPath.row) { (image, _) in
        self.avatarImageView.image = image
      }
      
    }
  }
}
