//
//  StudioView.swift
//  Fitness+
//
//  Created by Lam Perth on 13/11/2021.
//

import SwiftUI
import MapKit

struct StudioView: View {
    @EnvironmentObject var studioModel:StudioModel
    @State var studio: Studio
    private var studioIndex: Int {
        studioModel.studios.firstIndex(where: {$0.id==studio.id}) ?? 0
    }
    
    var body: some View {
            ScrollView {
                HStack{
                    Text(studio.studioName)
                        .font(.title)
                        .bold()
                    FavoriteButton(isSet: $studioModel.studios[studioIndex].isFavorite)
                }
                
                VStack (alignment: .leading) {
                    Image(studio.studioImage)
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(EdgeInsets(top: 25, leading: 50, bottom: 40, trailing: 50))
                    
                    Text("Description")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    Text(studio.type)
                        
                    Divider()
                    
                    Text("Location")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    MapView(coordinate: CLLocationCoordinate2D(latitude: 22.302711, longitude: 114.177216))
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
                    Text(studio.studioAddress)
                    
                    Divider()
                    
                    Text("Equipment")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    Text(studio.equipment)
                    
                }
                .padding()
                Divider()
                Text("\n")
                Button(action: {print("Button tapped")}) {
                    NavigationLink(destination: ScheduleView()){
                        Text("Class Schedule")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 160, height: 40)
                            .background(Color.blue)
                            .cornerRadius(15.0)
                    }
                }
            }
//        .navigationBarTitle (Text(studio.studioName))
    }
}

struct StudioView_Previews: PreviewProvider {
//    static var previews: some View {
//        StudioView()
//    }
    
    static let studioModel = StudioModel()
    static var previews: some View {
        StudioView(studio: studioModel.studios[0] )
            .environmentObject(StudioModel())
    }
}
