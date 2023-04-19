//
//  EditMainView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct EditMainView: View {
    @State private var data = NusicModel.allData
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            List {
                ForEach($data, id: \.self, editActions: .move) { $element in
                    HStack {
                        Toggle("", isOn: $element.isSelected)
                            .toggleStyle(CheckboxToggle(style: .circle))
                            .foregroundColor(.red)
                        Image(systemName: element.image)
                            .foregroundColor(.red)
                        Text(element.name)
                            .foregroundColor(.red)
                        Spacer()
                        Image(systemName: "text.justify")
                            .foregroundColor(.gray)
                    }
                }
            }
            .listStyle(.grouped)
            .background(Color.white)
            .scrollContentBackground(.hidden)
            PlayerView()
                .overlay(Divider(), alignment: .bottom)
            .toolbar {
                Button("Готово") {
                    dismiss()
                }
            }
        }
    }
}

struct EditMainView_Previews: PreviewProvider {
    static var previews: some View {
        EditMainView()
    }
}
