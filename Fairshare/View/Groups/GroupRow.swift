//
//  GroupRow.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-03-02.
//

import SwiftUI

struct GroupRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Group {
                    Text("O")
                        .font(.title2)
                        .foregroundStyle(.white)
                }
                .frame(width: 40, height: 40)
                .background(.secondary)
                .clipShape(.rect(cornerRadius: 16))
                Text("Office")
                Spacer()
                NavigationLink {

                } label: {
                    HStack {
                        Spacer()
                        Text("+ LKR 10,000")
                            .foregroundStyle(.green)
                    }
                }
            }
            VStack(alignment: .leading, spacing: 0) {
                Text("Yakek owes you LKR 2,000")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.leading, 50)
                    .padding([.top, .bottom], 2)
                Text("Jake owes you LKR 1,000")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.leading, 50)
                    .padding([.top, .bottom], 2)
            }
            .overlay(
                CurvedConnector()
                    .stroke(
                        .tertiary,
                        style: StrokeStyle(
                            lineWidth: 1)
                    )
                    .frame(width: 40),
                alignment: .bottomLeading
            )
        }
    }
}

struct CurvedConnector: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addArc(
            center: CGPoint(x: rect.midX + 4, y: rect.maxY - 4), radius: 4,
            startAngle: .degrees(-180), endAngle: .degrees(90), clockwise: true)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        return path
    }
}

#Preview {
    GroupRow()
}
