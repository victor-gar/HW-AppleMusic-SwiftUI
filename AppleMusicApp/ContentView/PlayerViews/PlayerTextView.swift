//
//  PlayerTextView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct PlayerTextView: View {
    var body: some View {
        VStack {
            Text("Ищите свою музыку?")
                .font(.title)
                .bold()
            Text("Здесь появится купленная вами в iTunes Store музыка.")
                .font(.title2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}
