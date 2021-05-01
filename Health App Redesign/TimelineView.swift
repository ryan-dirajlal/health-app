//
//  TimelineView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/21/21.
//

import SwiftUI

struct TimelineView: View {
    @State private var friendsTimeline = false
    @State private var personalTimeline = false
    @State private var navigationSelectionTag: Int? = 0
    var body: some View {
        //ScrollView {
        ZStack {
          Color(.systemGray6)
            .edgesIgnoringSafeArea(.all)
        VStack{
            NavigationLink(destination: ProfileView(), tag: 1, selection: self.$navigationSelectionTag) {
                EmptyView()
            }
            Spacer()
            
            TabView {
               
                    //friends timeline
                VStack {
                    Text("Friends' Activity")
                      .font(.system(size: 28.0))
                    ScrollView {
                        friendsActivity()
                    
                        friendsActivity()
                        friendsActivity()
                        friendsActivity()
                        friendsActivity()
                       
                    }
          
                }
              
                //user activity
                VStack {
                    Text("Your Activity")
                        .font(.system(size: 28.0))
                    ScrollView {
                        theuserActivity()
                        theuserActivity()
                        theuserActivity()
                        theuserActivity()
                        theuserActivity()
                    }
                }
            
            }
               
        }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        .navigationTitle("Timeline")
        
        //user profile button
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
            ToolbarItemGroup(placement: .navigationBarLeading)
            {

                Button( action: {
                    print("add activity button pressed")
                })
               {
                    HStack
                    {
                    Image(systemName: "plus.circle")

                    }
                }
            }
            
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
