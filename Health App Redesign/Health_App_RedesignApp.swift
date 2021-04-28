//
//  Health_App_RedesignApp.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/21/21.
//

import SwiftUI

@main
struct Health_App_RedesignApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    //discoverView(location: locations.primary)
                    TimelineView()
                }
                .tabItem {
                    Image(systemName: "bonjour")
                    Text("Timeline")
                }
                

            
                
                NavigationView {
                    FavoritesView()
                }
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
                
                
                
                NavigationView {
                    HighlightsView()
                }
                .tabItem {
                    Image(systemName: "point.topleft.down.curvedto.point.bottomright.up")
                    Text("Highlights")
                }
                
                NavigationView {
                    BrowseView()
                }
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
                
                
                NavigationView {
                    DiscoverView()
                }
                .tabItem {
                    Image(systemName: "safari")
                    Text("Discover")
                }
                

                
                
              
            }
        }
    }
}
