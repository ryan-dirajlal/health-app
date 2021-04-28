//
//  TimelineView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/21/21.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        ScrollView {
            Text("Hello, World!!")
        }
        .navigationTitle("Timeline")
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

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
