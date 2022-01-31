//
//  ProfileView.swift
//  Fitness+
//
//  Created by Wright Chin on 12/11/2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
        //        MapView()
        //            .ignoresSafeArea(edges: .top)
        //            .frame(height: 300)
                
                ScrollView {
                    VStack (alignment: .leading) {
                        Image("test")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(200)
                            .shadow(radius: 5)
                            .padding(.all, 50)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                            .font(.title)

                        HStack {
                            Text("Irene")
                            Spacer()
                            Text("Korea")
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()
                        
                        Text("Class Attended")
                            .font(.title)
                        VStack{
                            HStack {
                                Text("Yoga")
                                Spacer()
                                Text("0")
                            }
                            
                            HStack {
                                Text("Fitness")
                                Spacer()
                                Text("0")
                            }
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                        Divider()
                        
                        Text("Record")
                            .font(.title)
                        VStack{
                            
                        }
                    }
                }
                .padding()

            }
        .navigationTitle("User Profile")
        }
    }
}

@available(iOS 15.0, *)
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
