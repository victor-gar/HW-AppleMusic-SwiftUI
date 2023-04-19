//
//  EditMainView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct EditMainView: View {
    @State private var data = MusicModel.allData
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            List {
                ForEach($data, id: \.self, editActions: .move) { $element in
                    HStack {
                        Toggle("", isOn: $element.isSelected)
                            .toggleStyle(CheckboxToggle(style: .circle))
                            .foregroundColor(.systemRed)
                        Image(systemName: element.image)
                            .foregroundColor(.systemRed)
                        Text(element.name)
                            .foregroundColor(.systemRed)
                        Spacer()
                        Image(systemName: "text.justify")
                            .foregroundColor(.systemGray)
                    }
                }
            }
            .listStyle(.grouped)
            .background(Color.systemBackground)
            .scrollContentBackground(.hidden)
            PlayerView()
                .overlay(Divider(), alignment: .bottom)
                .background(Color.systemBackground)
            .toolbar {
                Button("Готово") {
                    dismiss()
                }
            }
        }
        .background(Color.systemBackground)

    }

}

struct EditMainView_Previews: PreviewProvider {
    static var previews: some View {
        EditMainView()
    }
}
