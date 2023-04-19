//
//  CheckboxToggle.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct CheckboxToggle: ToggleStyle {
    @Environment(\.isEnabled) var isEnabled
    let style: Style

    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(
                    systemName: configuration.isOn
                    ? "checkmark.\(style.sfSymbol).fill"
                    : style.sfSymbol
                )
                    .imageScale(.large)
                configuration.label
            }
        })
        .buttonStyle(PlainButtonStyle())
        .disabled(!isEnabled)
    }

    enum Style {
        case circle

        var sfSymbol: String {
            switch self {
            case .circle:
                return "circle"
            }
        }
    }
}
