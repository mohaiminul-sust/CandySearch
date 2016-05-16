//
//  DetailViewController.swift
//  CandySearch
//
//  Created by Mohaiminul Islam on 5/17/16.
//  Copyright © 2016 infancyit Developers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  @IBOutlet weak var candyImageView: UIImageView!
  
  var detailCandy: Candy? {
    didSet {
      configureView()
    }
  }
  
  func configureView() {
    if let detailCandy = detailCandy {
      if let detailDescriptionLabel = detailDescriptionLabel, candyImageView = candyImageView {
        detailDescriptionLabel.text = detailCandy.name
        candyImageView.image = UIImage(named: detailCandy.name)
        title = detailCandy.category
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
}

