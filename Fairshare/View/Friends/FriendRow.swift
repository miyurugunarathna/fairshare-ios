//
//  FriendRow.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-04.
//

import SwiftUI

struct FriendRow: View {
    var body: some View {
        HStack {
            Group {
                Text("C")
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            .frame(width: 40, height: 40)
            .background(.secondary)
            .clipShape(.circle)
            Text("Coco Xu")
            Spacer()
            Text("+ LKR 10,000")
                .foregroundStyle(.green)
        }
    }
}

#Preview {
    FriendRow()
}
