//
//  BrowseView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ContentView()) {
                    Text("Activity")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Body Measurements")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Cycle Tracking")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Hearing")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Heart")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Mindfulness")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Mobility")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Nutrition")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Respiratory")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Sleep")
                }
            }
            .navigationTitle("Health Categories")
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
