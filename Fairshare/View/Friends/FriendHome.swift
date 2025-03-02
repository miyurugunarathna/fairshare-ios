//
//  FriendHome.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-04.
//

import Charts
import SwiftUI

struct Amounts: Identifiable {
    let id = UUID()
    let type: String
    let value: Int
}

struct FriendHome: View {
    @State private var search = ""
    @State private var amounts: [Amounts] = [
        .init(type: "To get", value: 3000),
        .init(type: "To pay", value: 1000),
    ]

    var body: some View {
        NavigationSplitView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button("All") {

                        }
                        .buttonStyle(.borderedProminent)
                        Button("Friends you owe") {

                        }
                        Button("Friends who owe") {

                        }
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    .listRowSeparator(.hidden)
                    .padding(.horizontal)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
                Chart(amounts) { amount in
                    SectorMark(
                        angle: .value("Values", amount.value), angularInset: 1.5
                    )
                    .foregroundStyle(by: .value("Type", amount.type))
                }
                .frame(height: 140)
                .chartForegroundStyleScale([
                    "To pay": Color.red,
                    "To get": Color.green,
                ])
                .chartLegend(alignment: .bottom, spacing: 20)
                .listRowSeparator(.hidden)
                NavigationLink {
                    FriendDetails()
                } label: {
                    FriendRow()
                }
                NavigationLink {
                    FriendDetails()
                } label: {
                    FriendRow()
                }
            }
            .listStyle(.inset)
            .navigationTitle("Friends")
            .searchable(text: $search)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {

                    } label: {
                        Text("Edit")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {

                    } label: {
                        Label("Add Friend", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a Friend")
        }
    }
}

#Preview {
    FriendHome()
}
