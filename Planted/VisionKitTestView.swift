//
//  VisionKitTestView.swift
//  Planted
//
//  Created by Cameron Warner on 3/27/23.
//

import SwiftUI
import VisionKit

struct VisionKitTestView: View {
    @State var isPresenting: Bool = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.clear)
        VStack{
            Spacer()
            HStack{
                Image(systemName: "camera")
                    .onTapGesture {
                        isPresenting = true
                    }
            }// End of HStack
            .font(.largeTitle)
            .foregroundColor(.primary)
            }//End of VStack
        .sheet(isPresented: $isPresenting){
//            PlantPicker(sourceType: )
        }
        }//End of ZStack
    }
}

struct VisionKitTestView_Previews: PreviewProvider {
    static var previews: some View {
        VisionKitTestView()
    }
}

//func numberOfLowercasedCharacters(in string: String) -> Int {
//
//    let lowercasedVowels = ["a", "b", "c", "d"]
//    var count = 0
//
//    for character in string {
//        if lowercasedVowels.contains(character) {
//            count += 1
//        }
//    }
//
//    return count
//}
