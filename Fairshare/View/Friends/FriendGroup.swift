//
//  FriendGroup.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-03-01.
//

import SwiftUI

struct FriendGroup: View {
    var body: some View {
        HStack {
            Group {
                Text("O")
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            .frame(width: 40, height: 40)
            .background(.secondary)
            .clipShape(.circle)
            Text("Office")
            Spacer()
        }
    }
}

#Preview {
    FriendGroup()
}
