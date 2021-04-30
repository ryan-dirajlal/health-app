//
//  DiscoverView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        ScrollView {
            VStack {
                
                VStack {
                    Text("Blog Posts")
                        .font(.title)
                
                    Image("sleep")
                        .resizable()
                        .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                    
                    Image("keto")
                        .resizable()
                        .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                VStack {
                    Text("Apps")
                        .font(.title)
                    
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
                }
                
            }
        }
        .navigationTitle("Discover")
        .toolbar{
            ToolbarItemGroup(placement: .navigationBarTrailing)
            {
                
                Button( action: {
                    print("Profile pic pressed")
                })
               {
                    HStack
                    {
                    Image(systemName: "person.circle.fill")
                        
                    }
                }
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
