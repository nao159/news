//
//  ContentView.swift
//  news
//
//  Created by Максим on 10.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("pose2")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
