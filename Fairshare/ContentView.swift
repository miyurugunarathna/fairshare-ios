//
//  ContentView.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-03.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tabs = .friends

    enum Tabs {
        case friends
        case groups
        case activity
        case settings
    }

    var body: some View {
        TabView(selection: $selection) {
            Tab("Friends", systemImage: "person", value: .friends) {
                FriendHome()
            }

            Tab("Groups", systemImage: "person.2", value: .groups) {
                GroupHome()
            }

            Tab("Activity", systemImage: "bookmark", value: .activity) {
                ActivityHome()
            }

            Tab("Settings", systemImage: "gear", value: .settings) {
                SettingHome()
            }
        }
    }
}

#Preview {
    ContentView()
}
