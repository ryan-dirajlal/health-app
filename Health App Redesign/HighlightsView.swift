//
//  HighlightsView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/25/21.
//

import SwiftUI

struct HighlightsView: View {
    @State private var navigationSelectionTag: Int? = 0 //deals with profile button
    var body: some View {
//        ScrollView {
//            VStack {
        
        List{
            HStack{
                Spacer()
            
                Image("highlights1")
                    .resizable()
                    .frame(width: 320, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
                
            HStack{
                Spacer()
            
                Image("highlights2")
                    .resizable()
                    .frame(width: 320, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
                
            HStack{
                Spacer()
            
                Image("highlights3")
                    .resizable()
                    .frame(width: 320, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
                NavigationLink(destination: HighlightsCalendarView()) {
                    Text("View Calendar")
                //}
            }
        }
        .navigationTitle("Highlights")
        .padding()
        
        //profile button
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
