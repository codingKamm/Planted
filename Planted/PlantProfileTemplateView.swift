//
//  PlantProfileTemplateView.swift
//  Planted
//
//  Created by Cameron Warner on 3/29/23.
//

import SwiftUI

struct PlantProfileTemplateView: View {
    
    let snakePlantProfile = PlantProfile(id: UUID(), plantName: "Snake Plant", age: 4, plantImage: Image("snakePlant"), light: "High", tempature: 29, waterIntake: 200, size: "Medium", description: "The snake plant, also known as Sansevieria or mother-in-law's tongue, is a popular an resilient indoor plant that is native to West Africa.")
    
    var body: some View {
           VStack {
            
               VStack(alignment: .leading) {
                        
//                MapView()
//                    .frame(height: 300)
//                    .edgesIgnoringSafeArea(.top)
                   
                   snakePlantProfile.plantImage
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
                    .scaledToFit()
                    .overlay {
                        RoundedRectangle(cornerRadius: 25).stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                    .offset(y: -130)
                    //.padding(.bottom, -130)
                   
                Text("Luh Kam") //Create an array/ dictionary to contain profileNames
                    .font(.title)
                    .padding(.all)
                
                HStack {
                  Text(" 7 years old")
                        .font(.subheadline)
                    Spacer()
                  Text("St. Louis, MO ")
                        .font(.subheadline)
                    
                }//End of HStack
                   Divider()
                       
                       Text("He just a luh misunderstood thass all. I no y'all can ruhlate doe!")// Bio?
                    .padding()
                   Spacer()
            }
               Spacer()
               
           } //End of VStack
        }
    }

struct PlantProfileTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        PlantProfileTemplateView()
    }
}
