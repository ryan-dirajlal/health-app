//
//  userActivity.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 5/1/21.
//

import SwiftUI

struct theuserActivity: View {
    var body: some View {
        //user activity view in  timeline
        
      
            
                NavigationLink(destination: ContentView()) {
                    HStack{
                                
                    Spacer()
                    Image("FActivity1")
                        .resizable()
                        .frame( height: 205, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                    Spacer()
                    
                
               
            }
        }
    }
}
    


