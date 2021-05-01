//
//  BrowseView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct BrowseView: View {
    @State private var navigationSelectionTag: Int? = 0
    var body: some View {
        //NavigationView {
        VStack {
                        NavigationLink(destination: ProfileView(), tag: 1, selection: self.$navigationSelectionTag) {
                            EmptyView()
                        }
                        Spacer()
        
            VStack {
                List {
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("flame")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Activity")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("body")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Body Measurements")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("cycling")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Cycle Tracking")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("ear")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Hearing")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("heart")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Heart")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("brain")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Mindfulness")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("right-arrow")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Mobility")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("plan")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Nutrition")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("lungs")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Respiratory")
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("sleep-1")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Sleep")
                        }
                    }
                }
                .navigationTitle("Health Categories")
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing)
                    {
                        
                        Button( action: {
                            self.navigationSelectionTag = 1
                        })
                       {
                            HStack
                            {
                            Image(systemName: "person.circle.fill")
                                
                            }
                        }
                    }
                }
               // .navigationBarHidden(true)
              
            }
        }
    }
//}
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
