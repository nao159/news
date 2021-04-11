//
//  NetworkManager.swift
//  news
//
//  Created by Максим on 10.04.2021.
//

import SwiftUI

class NetworkManager: ObservableObject {
    
    @Published var posts = [Hits]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?query=foo&tags=story") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safedata = data {
                        do {
                            let result = try decoder.decode(PostData.self, from: safedata)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
