//
//  ProfileView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 5/1/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
        Image(systemName: "person.circle.fill")
            .resizable()
            .frame(width: 45, height: 45)
        Text("Ryan Dirajlal")
            .font(.title)
        }
                VStack {
            List{
                Section(header: Text("Medical Info").font(.title)){
                    NavigationLink(destination: ContentView()) {
                        Text("Health Details")
                    }
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Medical ID")
                    }

            
                }
                Section(header: Text("Features").font(.title)){
                    NavigationLink(destination: ContentView()) {
                    
                        Text("Health Checklist")
                    }
                    NavigationLink(destination: ContentView()) {
                        Text("Health Records")
                    }
                        
                    NavigationLink(destination: ContentView()) {
                        Text("Organ Donation")
                    
                    }
            
                }
                Section(header: Text("Privacy").font(.title)){
                    NavigationLink(destination: ContentView()) {
                    
                        Text("Apps")
                    }
                    NavigationLink(destination: ContentView()) {
                        Text("Research Studies")
                    }
                    NavigationLink(destination: ContentView()) {
                        Text("Devices")
                    
                    }
            
                }
                
            
                
               
                        }
                    }
                }
    }

    

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
