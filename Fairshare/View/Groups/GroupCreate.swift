//
//  GroupCreate.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-03-02.
//

import SwiftUI

struct GroupCreate: View {
    @Environment(\.dismiss) var dismiss
    @State private var name: String = ""

    var body: some View {
        NavigationView {
            Form {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.quinary)
                    .aspectRatio(16/9, contentMode: .fit)
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                Button {

                } label: {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .disabled(name == "")
            }
            .formStyle(.columns)
            .padding()
            .navigationTitle("Create a group")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .symbolRenderingMode(.hierarchical)
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    GroupCreate()
}
