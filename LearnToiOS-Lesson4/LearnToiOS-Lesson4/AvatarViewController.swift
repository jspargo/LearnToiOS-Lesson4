//
//  AvatarViewController.swift
//  LearnToiOS-Lesson4
//
//  Created by Mike Robinson on 02/06/2018.
//  Copyright © 2018 Mike Robinson. All rights reserved.
//

import UIKit

class AvatarViewController: UIViewController {

  var selectedIndexPath: IndexPath?
  let modelController = ModelController.shared
  
  @IBOutlet weak var avatarImageView: UIImageView!
  
  private var previousTransform = CGAffineTransform.identity
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    if let row = selectedIndexPath?.row {
      modelController.loadAvatarImageOfItem(at: row) { image, _ in
        self.avatarImageView.image = image
      }
    }
  }
  
  @IBAction func didRecogniseSwipe(_ sender: UISwipeGestureRecognizer) {
    NSLog("\(#function)")
    
    
    self.dismiss(animated: true) { }
    
  }
}
