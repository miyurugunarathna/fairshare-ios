//
//  FriendDetails.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-08.
//

import SwiftUI

struct FriendDetails: View {
    @State private var isShowingSettings = false

    var body: some View {
        List {
            VStack(alignment: .center) {
                Group {
                    Text("C")
                        .font(.title)
                        .foregroundStyle(.white)
                }
                .frame(width: 60, height: 60)
                .background(.secondary)
                .clipShape(.circle)
                Text("You're sellted up")
                HStack {
                    Button("Settle") {

                    }
                    Button("Remind") {

                    }
                    Button("Export") {

                    }
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
            }
            .frame(maxWidth: .infinity)
            .listRowSeparator(.hidden)
            Section("February 2025") {
                FriendTransaction()
                FriendTransaction()
            }
            .listSectionSeparator(.hidden)
            Section("January 2025") {
                FriendTransaction()
            }
            .listSectionSeparator(.hidden)
        }
        .listStyle(.inset)
        .navigationTitle("Coco Xu")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {

                } label: {
                    Label("Add Expense", systemImage: "plus")
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Options", systemImage: "gearshape") {
                    isShowingSettings.toggle()
                }
                .labelStyle(.iconOnly)
                .sheet(isPresented: $isShowingSettings) {
                    FriendSettings()
                }
            }
        }
    }
}

#Preview {
    FriendDetails()
}
