//
//  FriendTransaction.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-08.
//

import SwiftUI

struct FriendTransaction: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Group {
                Label("Food", systemImage: "fork.knife")
                    .labelStyle(.iconOnly)
            }
            .frame(width: 42, height: 42)
            .background(.regularMaterial)
            .clipShape(.circle)
            VStack(alignment: .leading) {
                HStack {
                    Text("Grocery")
                        .font(.title3)
                    Spacer()
                    Text("+ LKR 1,000")
                        .foregroundStyle(.green)
                }
                Text("You paid LKR 10,000")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text("08 February, Saturday 02:21 PM")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    FriendTransaction()
}
