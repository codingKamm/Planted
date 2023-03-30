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
                    Label("Home", systemImage: "house")
            }

        PlantProfileTemplateView()
                .tabItem {
                    Label("My Plants", systemImage: "leaf")
            }

        ContentView()
                .tabItem {
                    Label("Water Reminder", systemImage: "drop")
            }
        }// End of TabView
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
