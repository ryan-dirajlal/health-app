//
//  DiscoverView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct DiscoverView: View {
    @State private var navigationSelectionTag: Int? = 0
    var body: some View {
        
            VStack {
                NavigationLink(destination: ProfileView(), tag: 1, selection: self.$navigationSelectionTag) {
                    EmptyView()
                }
                Spacer()
                List{
                    Section(header: Text("Blog Posts").font(.title)){

                HStack{
                            
                Spacer()
                Image("sleep")
                    .resizable()
                    .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                Spacer()
                }
                HStack{
                Spacer()
                
                Image("keto")
                    .resizable()
                    .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                    }
                
                    
                    Section(header: Text("3rd-Party Apps").font(.title)){
                        NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("sleep-2")
                                .resizable()
                                .frame(width: 25, height: 25)
                            VStack {
                                Text("Sleep Sound Stories")
                                Text("Meditation to help you sleep")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 8))
                            }
                        }
                        }
                        
                        
                        NavigationLink(destination: ContentView()) {
                            HStack {
                                Image("medical-records")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                VStack {
                                    Text("Health Records")
                                    Text("Food tracker for weight loss")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 8))
                                }
                            }
                        }
                        
                        NavigationLink(destination: ContentView()) {
                            HStack {
                                Image("walking")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                VStack {
                                    Text("Pace Pedometer")
                                    Text("Walking and weight loss")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 8))
                                }
                            }
                        }
                        NavigationLink(destination: ContentView()) {
                            HStack {
                                Image("mood-swings")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                VStack {
                                    Text("Moody Month")
                                    Text("Daily wellness and cycle tracker")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 8))
                                }
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
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
