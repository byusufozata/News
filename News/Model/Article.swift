//
//  Article.swift
//  News
//
//  Created by YUSUF ÖZATA on 29.09.2022.
//

import Foundation

struct ArticlesList: Decodable{
    let articles: [Article]
}

struct Article: Decodable{
    let title : String
    let description: String
}

