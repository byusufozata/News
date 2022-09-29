//
//  WebService.swift
//  News
//
//  Created by YUSUF ÖZATA on 28.09.2022.
//

import Foundation

class WebService{
    func getArticles(url: URL , completion: @escaping ([Article]?) -> () ){
      
        URLSession.shared.dataTask(with: url ){ data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticlesList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
            }
            
        }.resume()
}
}
