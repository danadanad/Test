//
//  MovieDetailViewController.swift
//  MovieApp
//
//  Created by 陳正昇 on 2016/3/28.
//  Copyright © 2016年 Link Chen. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

  @IBOutlet weak var imageViewCover: UIImageView!
  @IBOutlet weak var labelDescription: UILabel!
  
  var movieTitle = ""
  var movieImageCover = ""
  var movieDescription = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = movieTitle
    self.imageViewCover.image = UIImage(named: movieImageCover)
    self.labelDescription.text = movieDescription
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
