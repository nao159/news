//
//  PostData.swift
//  news
//
//  Created by Максим on 10.04.2021.
//

import SwiftUI

struct PostData: Codable {
    
    let hits: [Hits]
}

struct Hits: Codable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let title: String
    let url: String?
    let author: String
    let objectID: String
}

