//
//  UIController.swift
//  PracticeMakePerfect
//
//  Created by Farhandika Zahrir Mufti guenia on 11/05/21.
//

import SwiftUI

struct UIController: View {
    var body: some View {
        ZStack {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                addNewItemUI()
                    .tabItem {
                        Label("new", systemImage: "plus.square")
                    }
                AccUIView()
                    .tabItem {
                        Label("Menu", systemImage: "person.fill")
                    }
            }
            .tabViewStyle(/*@START_MENU_TOKEN@*/DefaultTabViewStyle()/*@END_MENU_TOKEN@*/)
        }
    }
}

struct UIController_Previews: PreviewProvider {
    static var previews: some View {
        UIController()
    }
}
