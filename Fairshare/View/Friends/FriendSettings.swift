//
//  FriendSettings.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-12.
//

import SwiftUI

struct FriendSettings: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Group {
                        Text("M")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    .frame(width: 60, height: 60)
                    .background(.secondary)
                    .clipShape(.circle)
                    VStack(alignment: .leading) {
                        Text("Miyuru Gunarathna")
                        Text("miyurupriyawadan@gmail.com")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
                .listRowSeparator(.hidden)
                Section("Manage relationship") {
                    ManageRelationshipAction(
                        title: "Remove from friend list", systemName: "trash")
                    ManageRelationshipAction(
                        title: "Block user", systemName: "hand.raised",
                        tagline:
                            "Remove this user from your friends list, hide any groups you share, and suppress future expenses/notifications from them"
                    )
                    ManageRelationshipAction(
                        title: "Report user",
                        systemName: "exclamationmark.bubble",
                        tagline: "Flag an abusive, suspicious or scam account")
                }
                .listSectionSeparator(.hidden)
                Section("Shared groups") {
                    NavigationLink {
                        FriendGroup()
                    } label: {
                        FriendGroup()
                    }
                }
                .listSectionSeparator(.hidden)
            }
            .listStyle(.inset)
            .navigationTitle("Friend Settings")
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

struct ManageRelationshipAction: View {
    let title: String
    let systemName: String
    var tagline: String? = nil

    var body: some View {
        HStack {
            Image(systemName: systemName)
                .imageScale(.medium)
                .foregroundStyle(.tint)
                .frame(width: 40, height: 40)
                .background(.tint.quaternary)
                .clipShape(.circle)
            VStack(alignment: .leading) {
                Text(title)
                if let tagline {
                    Text(tagline)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    FriendSettings()
}
