//
//  PostDetailView.swift
//  news
//
//  Created by Максим on 10.04.2021.
//

import SwiftUI
import WebKit


struct PostDetailView: View {
    
    let url: String?
    
    var body: some View {
        webView(urlString: url)
    }
}
