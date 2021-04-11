//
//  ContentView.swift
//  news
//
//  Created by Максим on 10.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: PostDetailView(url: post.url),
                    label: {
                        HStack {
                            Text(post.author)
                            Text(post.title)
                        }
                    })
            }
            .navigationBarTitle("Interesting News")
        }.colorInvert()
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
