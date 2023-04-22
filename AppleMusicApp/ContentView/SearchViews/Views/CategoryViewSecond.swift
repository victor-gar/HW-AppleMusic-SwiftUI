//
//  CategoryViewSecond.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 21.04.2023.
//

import SwiftUI

struct CategoryViewSecond: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(spacing: 10){
                PlatlistViewHead()
                Divider()
                HStack {
                    Text("Настроение-осень")
                        .font(Font.title2.weight(.bold))
                        .foregroundColor(.label)
                        .padding(.leading)
                    Spacer()
                    
                    Button(action: {}, label: { Text("См. все")
                            .font(.subheadline)
                            .foregroundColor(Color.systemRed)
                        .padding(.trailing)})
                }
                PlatlistViewSmall()
                HStack {
                    Text("Хиты")
                        .font(Font.title2.weight(.bold))
                        .foregroundColor(.label)
                        .padding(.leading)
                    Spacer()
                }
                SongRowList().frame(height: 300)
                HStack {
                    Text("Сборники")
                        .font(Font.title2.weight(.bold))
                        .foregroundColor(.label)
                        .padding(.leading)
                    Spacer()
                }
                PlatlistViewSmall()
                HStack {
                    Text("Новинки")
                        .font(Font.title2.weight(.bold))
                        .foregroundColor(.label)
                        .padding(.leading)
                    Spacer()
                }
                PlatlistViewSmall()
                    .padding(.bottom, 100)
            }
        }
        .navigationTitle("Плейлист")
        .navigationBarTitleDisplayMode(.automatic)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button("Назад") {
            self.presentationMode.wrappedValue.dismiss()
        })
        .overlay(PlayerView()
            .overlay(Divider(),
                     alignment: .bottom), alignment: .bottom)
    }
    
}

struct CategoryViewSecond_Previews: PreviewProvider {
    static var previews: some View {
        CategoryViewSecond()
    }
}


