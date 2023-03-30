//
//  PlantProfileTemplateView.swift
//  Planted
//
//  Created by Cameron Warner on 3/29/23.
//

import SwiftUI

struct PlantProfileTemplateView: View {
    
    let snakePlantProfile = PlantProfile(id: UUID(), plantName: "Snake Plant", age: 4, plantImage: Image("snakePlant"), light: "High", tempature: 29, waterIntake: 200, size: "Medium", description: "The snake plant, also known as Sansevieria or mother-in-law's tongue, is a popular an resilient indoor plant that is native to West Africa. It has long, upright leaves that grow from a basal rosette and can reach up to 4 feet tall. The leaves are thick, fleshy, and pointed with a green-grey color and sometimes variegated with stripes of yellow or white. \n\nSnake Plants are highly adaptable and can tolerate a wide range of light conditions, from bright, indirect light to low light. They prefer well-daining soil and only need to be watered occasionally, as they are highlt drought-tolerant. They are also known for their air-purifying abilities, as the remove toxins such as formaldehyde and benzene from the air. Overall, the snake plane is a low-maintenance and stylish addition to any indoor space.")
    
    var body: some View {
        NavigationStack{
            VStack {
                VStack {
                    ZStack{
                        HStack{
                            snakePlantProfile.plantImage
                                .resizable()
                                .edgesIgnoringSafeArea(.all)
                                .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
                                .scaledToFit()
                            
                                .shadow(radius: 7)
                            //                            .offset(y: -130)
                                .padding(.bottom)
                            VStack{
                                Section{
                                    Text("Living Room Plant")
                                    Text("\(snakePlantProfile.age) months old")
                                }
                                
                                Section{
                                    HStack{
                                        Image(systemName: "sun.dust")
                                            .font(.largeTitle)
                                        VStack{
                                            Text("Light")
                                                .fontWeight(.heavy)
                                            Text(snakePlantProfile.light)
                                        }
                                    }
                                }// End of Section
                                
                                Section{
                                    HStack{
                                        Image(systemName: "thermometer.sun")
                                            .font(.largeTitle)
                                        VStack{
                                            Text("Tempature")
                                                .fontWeight(.heavy)
                                            Text("\(snakePlantProfile.tempature)")
                                        }
                                    }
                                }// End of Section
                                Section{
                                    HStack{
                                        Image(systemName: "drop")
                                            .font(.largeTitle)
                                        VStack{
                                            Text("Water")
                                                .bold()
                                            Text("2x a week \(snakePlantProfile.waterIntake) ml")
                                        }
                                    }
                                }// End of Section
                                Section{
                                    HStack{
                                        Image(systemName: "arrow.up.and.down")
                                            .font(.largeTitle)
                                        VStack{
                                            Text("Size")
                                                .bold()
                                            Text("\(snakePlantProfile.size)")
                                        }
                                    }
                                }// End of Section
                                
                            }// End of VStack
                            .padding(.trailing)
                        }//End of HStack
                        RoundedRectangle(cornerRadius: 35)
                                    .stroke(Color.green, lineWidth: 9)
                                    .ignoresSafeArea(.all)
//                                    .edgesIgnoringSafeArea(.all)
//                                    .frame(width: 250, height: 150)
                    }//End of ZStack
                    Text("Description")//Needs to be right aligned
                        .font(.title)
                        .padding()
                    
                ScrollView{
                    Text(snakePlantProfile.description)
                            .padding()
                        }// End of ScrollView
                    }//End of VStack
                
                } //End of VStack
            .navigationTitle(snakePlantProfile.plantName)
            .navigationBarTitleDisplayMode(.inline)

            }// End of Nav. Stack
        }
    }

struct PlantProfileTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        PlantProfileTemplateView()
    }
}
