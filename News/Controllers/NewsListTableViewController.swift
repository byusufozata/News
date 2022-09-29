//
//  NewsListTableViewController.swift
//  News
//
//  Created by YUSUF ÖZATA on 28.09.2022.
//

import UIKit

class NewsListTableViewController : UITableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=3062d3ea36124fcb98553d2c6759eb06")!

        WebService().getArticles(url:url){ _ in
            
        }
    }
}
