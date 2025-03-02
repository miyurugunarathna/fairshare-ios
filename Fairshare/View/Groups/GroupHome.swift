//
//  GroupHome.swift
//  Fairshare
//
//  Created by Miyuru Gunarathna on 2025-02-04.
//

import Charts
import SwiftUI

struct GroupHome: View {
    @State private var search = ""
    @State private var filter: Filter = .all
    
    enum Filter {
        case all
        case get
        case pay
    }

    var body: some View {
        NavigationSplitView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button("All") {
                            
                        }
                        .buttonStyle(.borderedProminent)
                        Button("To Pay Groups") {
                            
                        }
                        Button("To Get Groups") {
                            
                        }
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    .listRowSeparator(.hidden)
                    .padding(.horizontal)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
                GroupRow()
            }
            .listStyle(.inset)
            .navigationTitle("Groups")
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
                        Label("Add Group", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a Group")
        }
    }
}

#Preview {
    GroupHome()
}
