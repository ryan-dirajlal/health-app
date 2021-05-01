//
//  HighlightsCalendarView.swift
//  Health App Redesign
//
//  Created by Malachy Lin-Nugent on 4/30/21.
//

import SwiftUI

struct HighlightsCalendarView: View {
    @State private var navigationSelectionTag: Int? = 0
    @State private var date = Date()
    
    var body: some View {
        
        //deals with profile button
        VStack{
            NavigationLink(destination: ProfileView(), tag: 1, selection: self.$navigationSelectionTag) {
                EmptyView()
            }
            Spacer()
        
        ScrollView {
            VStack {
                
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                
                Text(date.description(with: .current))
                    .fixedSize(horizontal: false, vertical: true)
               
                Text("Run")
                    .bold()
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.leading)
                    .padding()
              
                
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Distance")
                        Text("1")
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    VStack {
                        Text("Pace")
                        Text("1")
                    }
                    Spacer()
                   Divider()
                    Spacer()
                    VStack {
                        Text("Total time")
                        Text("1")
                    }
                   
                }
                //.padding()
                

                Spacer()
                Divider()
                Spacer()
              
                Text("Walk")
                    .bold()
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.leading)
                    .padding()
            
                
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Distance")
                        Text("1")
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    VStack {
                        Text("Pace")
                        Text("1")
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    VStack {
                        Text("Total time")
                        Text("1")
                    }
                    
                    
                   
                }
               // .padding()
            }
        }
        .navigationTitle("Highlights")
        .padding()
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
}
struct HighlightsCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightsCalendarView()
    }
}
