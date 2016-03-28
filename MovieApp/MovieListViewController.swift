//
//  MovieListViewController.swift
//  MovieApp
//
//  Created by 陳正昇 on 2016/3/28.
//  Copyright © 2016年 Link Chen. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource {
  
  var movieCoverImage = ["movie1", "movie2"]
  var movieTitle = ["我的少女時代", "KANO"]
  var movieReleaseDate = ["上映日期 2015-08-13", "上映日期 2014-02-27"]
  var movieDescription = ["2015年，林真心是一家公司的白領女員工，她很努力但並不滿足目前的生活狀態，於是開始回憶起自己少女時代的美好時光。時光追溯到1990年代中期，就讀於高中三年級4班的林真心有兩位好姐妹——何美和小隻，林真心的偶像是劉德華，小隻的偶像是金城武和郭富城。和其他大多數女同學一樣，真心也暗戀著上全校最受歡迎的男神歐陽非凡，歐陽不僅長得帥，學習好，而且籃球打得好，還會彈吉他。", "《KANO》是一部描述臺灣日治時期嘉義農林棒球隊的臺灣電影，由馬志翔執導的長片。其電影背景是描述1931年大日本帝國下的臺灣，一支由原住民和日本人、漢人組成的嘉義農林棒球隊，原本實力貧弱一勝難求，但在新教練近藤兵太郎指導之下，拿下全島冠軍並遠征第17屆夏季甲子園大會的故事。"]
  
  @IBOutlet weak var tableView: UITableView!
  
//  let movies: AllMovies = AllMovies()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    self.automaticallyAdjustsScrollViewInsets = false
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.movieTitle.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! MovieListTableViewCell
    
    cell.imageViewCover.image = UIImage(named: self.movieCoverImage[indexPath.row])
    cell.labelTitle.text = movieTitle[indexPath.row]
    cell.labelReleaseDate.text = movieReleaseDate[indexPath.row]

    return cell
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showMovieDetail" {
//      if let indexPath = tableView.indexPathsForSelectedRows {
        let destVC = segue.destinationViewController as! MovieDetailViewController
        destVC.movieTitle = self.movieTitle[0]
        destVC.movieImageCover = self.movieCoverImage[0]
        destVC.movieDescription = self.movieDescription[0]
//      }
    }
  }
}
  

