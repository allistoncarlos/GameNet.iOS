//
//  ContentView.swift
//  Shared
//
//  Created by Alliston Aleixo on 11/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 1

    var body: some View {
        TabView(selection: $selectedView) {
            NavigationView {
                DashboardView().navigationTitle("Dashboard")
            }
            .tabItem {
                Label("Dashboard", systemImage: "rectangle.stack")
            }
                
            NavigationView {
                GamesView().navigationTitle("Jogos")
            }
            .tabItem {
                Label("Games", systemImage: "gamecontroller.fill")
            }
            
            NavigationView {
                ListsView().navigationTitle("Listas")
            }
            .tabItem {
                Label("Listas", systemImage: "list.dash")
            }
             
            NavigationView {
                PlatformsView().navigationTitle("Plataformas")
            }.tabItem {
                Label("Plataformas", systemImage: "chevron.up.square")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
