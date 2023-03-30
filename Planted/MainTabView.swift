//
//  MainTabView.swift
//  Planted
//
//  Created by Cameron Warner on 3/29/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            
            ContentView()
                .tabItem {
                    Label("Learn", systemImage: "lightbulb.fill")
            }
//
//            AvoidView()
//                .tabItem {
//                    Label("Avoid", systemImage: "exclamationmark.triangle.fill")
//            }
//
//            ColorView()
//                .tabItem {
//                    Label("Practice", systemImage: "paintpalette.fill")
            }
        }// End of TabView    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
