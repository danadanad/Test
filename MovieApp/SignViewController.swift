//
//  SignViewController.swift
//  MovieApp
//
//  Created by 陳正昇 on 2016/3/28.
//  Copyright © 2016年 Link Chen. All rights reserved.
//

import UIKit

class SignViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var labelSignIn: UILabel!
  
  var array:[String] = []
  var labelText = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    labelSignIn.text = labelText
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

  }
  
  @IBAction func buttonAddSign(sender: AnyObject) {
    
    array.append(textField.text!)
    
    if array.count > 3 {
      array = []
    } else {
      labelText = array.joinWithSeparator("\n")
    }
    
    labelSignIn.text = labelText
  }
  
}
