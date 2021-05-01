//
//  HighlightsView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct HighlightsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("highlights1")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Image("hightlights2")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Image("hightlights3")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                NavigationLink(destination: HighlightsCalendarView()) {
                    Text("View Calendar")
                }
            }
        }
        .navigationTitle("Highlights")
        .padding()
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

struct HighlightsView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightsView()
    }
}
