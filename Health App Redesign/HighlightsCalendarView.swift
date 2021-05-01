//
//  HighlightsCalendarView.swift
//  Health App Redesign
//
//  Created by Malachy Lin-Nugent on 4/30/21.
//

import SwiftUI

struct HighlightsCalendarView: View {
    
    @State private var date = Date()
    
    var body: some View {
        ScrollView {
            VStack {
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                
                Text(date.description(with: .current))
                
                Text("Run")
                    .bold()
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                HStack {
                    VStack {
                        Text("Distance")
                        Text("1")
                    }
                    Rectangle()
                        .size(width: 1, height: 50)
                        .foregroundColor(.gray)
                    VStack {
                        Text("Pace")
                        Text("1")
                    }
                    Rectangle()
                        .size(width: 1, height: 50)
                        .foregroundColor(.gray)
                    VStack {
                        Text("Total time")
                        Text("1")
                    }
                }
                .padding()
                
                Rectangle()
                    .size(width: 500, height: 1)
                    .foregroundColor(.gray)
                
                Text("Walk")
                    .bold()
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                HStack {
                    VStack {
                        Text("Distance")
                        Text("1")
                    }
                    Rectangle()
                        .size(width: 1, height: 50)
                        .foregroundColor(.gray)
                    VStack {
                        Text("Pace")
                        Text("1")
                    }
                    Rectangle()
                        .size(width: 1, height: 50)
                        .foregroundColor(.gray)
                    VStack {
                        Text("Total time")
                        Text("1")
                    }
                }
                .padding()
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

struct HighlightsCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightsCalendarView()
    }
}
