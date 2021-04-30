//
//  DiscoverView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        
        NavigationView {
            List {
                NavigationLink(destination: ContentView()) {
                    Text("Sleep Sound Stories")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Health Records")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Pacer Pedometer & Step Tracker")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Moody Month")
                }
            }
            .navigationTitle("Apps")
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
