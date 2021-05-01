//
//  friendsActivity.swift
//  Health App Redesign
//
//  Created by Ryan Dirajlal on 5/1/21.
//

//friends activity view in timeline

import SwiftUI

struct friendsActivity: View {
   
    var body: some View {
        ZStack{
            Color.white
        
        VStack{
            HStack{
                VStack{
                    HStack{
                        Image(systemName: "person.circle.fill")
                        VStack{
                            HStack{
                    Text("Ryan Dirajlal")
                                Spacer()
                            }
                            HStack{
                    Text("April 29, 2021 at 5:30AM in San Francisco")
                        .font(.system(size: 10.0))
                                Spacer()
                            }
                        }
                       
                }
                    HStack{
                    Text("Morning Run at Sunrise")
                        .font(.system(size: 21.0))
                        .fontWeight(.bold)
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack{
                            Text("Distance")
                                .font(.system(size: 13.0))
                                .fontWeight(.bold)
                            Text("14.48 miles")
                                .font(.system(size: 13.0))
                        }
                        Divider().frame(height: 30)
                        VStack{
                            Text("Pace")
                                .font(.system(size: 13.0))
                                .fontWeight(.bold)
                            Text("11.09/mile")
                                .font(.system(size: 13.0))
                        }
                        Divider().frame(height: 30)
                        VStack{
                            Text("Time")
                                .font(.system(size: 13.0))
                                .fontWeight(.bold)
                            Text("3hr 29 min")
                                .font(.system(size: 13.0))
                        }
                    }
                  //  Divider()
                    
                    Spacer()
                }
                VStack{
                    Spacer()
                
                Image("runRoute")
                    .resizable()
                    .frame(width: 140, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                    
            }
            Divider()
            HStack(alignment: .center){
                Spacer()
                Image(systemName: "hand.thumbsup")
                Spacer()
                Divider()
                Spacer()
                Image(systemName: "square.and.arrow.up")
                Spacer()
                Divider()
                Image(systemName: "text.bubble")
                    Spacer()
                
                //Spacer()
            }
        }
        }
    }
}

struct friendsActivity_Previews: PreviewProvider {
    static var previews: some View {
        friendsActivity()
    }
}
