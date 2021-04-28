//
//  FavoritesView.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 4/27/21.
//

import SwiftUI

struct FavoritesView: View {
    @State private var name = ""
    var body: some View {
        ScrollView{
        VStack {
            HStack{
                Spacer()
            
            Button("Edit") {
                print("Edit Button tapped!")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
           .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.yellow]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20.0)
            }
            
            
            
                   // 1.
            GroupBox(
                label: Label("Activity", systemImage: "flame.fill")
                        .foregroundColor(.orange)
                        .padding()
                 )
                {
                HStack{
                    Spacer()
                    VStack{
                        Text("Move")
                            .foregroundColor(.red)
                        Text("183 cal")
                    }
                    Spacer()
                    VStack{
                        Text("Exercise")
                            .foregroundColor(.green)
                        Text("12 minutes")
                    }
                    Spacer()
                    VStack{
                        Text("Stand")
                            .foregroundColor(.blue)
                        Text("7 hr")
                    }
                    Spacer()
                    
                    
                }
                }
            
            
            
            
                   // 1.
            GroupBox(
                label: Label("Heart Rate", systemImage: "heart.fill")
                        .foregroundColor(.red)
                        .padding()
                 )
                {
                HStack{
                     Text("Your heart rate is 90 BPM.")
                    Spacer()
                }
                }
                   
            // 2.
            GroupBox (
                label: Label("Cardio Fitness", systemImage: "heart.fill")
                        .foregroundColor(.red)
                        .padding()
                )
                {
                HStack
                {
                    Text("Above Average: ")
                        .foregroundColor(Color.green)
                    Text("49 VO2 max")
                        .fontWeight(.bold)
                    Spacer()
                }
                    
                }
            
            GroupBox(
                label: Label("Walking + Runnning Distance", systemImage: "figure.walk")
                    .foregroundColor(.orange)
                        .padding()
                 )
                {
                HStack{
                Text("4/17/2021 - 1.3 miles")
                    .fontWeight(.bold)
                    .padding(.trailing)
                Spacer()
                }
            }
            
            // 1.
        GroupBox(
         label: Label("Resting Heart Rate", systemImage: "heart.fill")
                 .foregroundColor(.red)
                 .padding()
          )
         {
         HStack{
              Text("Your resting rate is 45 BPM.")
             Spacer()
         }
         }
           
            GroupBox(
                label: Label("Show all health data", systemImage: "ellipsis")
                 )
            {
                HStack{
                    Spacer()
                    Image(systemName: "arrow.right")
                }
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
            
            
        }
        .navigationTitle("Favorites")
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
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
