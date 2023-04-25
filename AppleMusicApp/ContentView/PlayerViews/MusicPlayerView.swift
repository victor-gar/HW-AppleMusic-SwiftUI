//
//  MusicPlayerView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 23.04.2023.
//

import SwiftUI

struct MusicPlayerView: View {
    @State private var isPlaying = false
    @State private var currentTime: TimeInterval = 10.0
    @State private var duration: TimeInterval = 0.0
    @State private var durationS: TimeInterval = 1.0
    @State private var timer: Timer?
    
    var body: some View {
        
        VStack{
            VStack {
                Image("musicList-12")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 280, height: 280, alignment: .center)
                    .cornerRadius(5)
                    .shadow(radius: 2)
                    .padding(.top, 80)
                    .padding(.bottom, 80)
                HStack{
                    VStack(alignment: .leading){
                        Text("Hajime, Pt.1")
                            .font(Font.title2.weight(.semibold))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        Text("Miyagi & Эндшпиль")
                            .foregroundColor(Color.white)
                            .font(Font.title3.weight(.regular))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Button(action: {
                        }) {
                            Image(systemName: "ellipsis")
                                .font(Font.title2.weight(.semibold))
                                .foregroundColor(Color.white.opacity(0.8))
                                .padding(13) // Отступы внутри кнопки
                                .background(Color.black.opacity(0.08))
                                .clipShape(Circle()) // Круглая форма кнопки
                        }
                    }
                }
                Spacer()
                VStack{
                    Slider(value: $currentTime, in: 0...duration)
                        .accentColor(.white)
                    HStack {
                        Text(formatTimeInterval(currentTime))
                            .foregroundColor(Color.white.opacity(0.8))
                        Spacer()
                        Text(formatTimeInterval(duration))
                            .foregroundColor(Color.white.opacity(0.8))
                        
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                }
                VStack {
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "backward.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Button(action: {
                            isPlaying.toggle()
                            if isPlaying {
                                self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                                    if self.currentTime < self.duration {
                                        self.currentTime += 1
                                    } else {
                                        timer.invalidate()
                                        self.isPlaying = false
                                        self.currentTime = 0
                                    }
                                }
                            } else {
                                self.timer?.invalidate()
                            }
                        }) {
                            Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                                .font(.system(size: 60))
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 50)
                    HStack {
                        Image(systemName: "speaker.fill")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                        
                        Slider(value: $durationS)
                            .accentColor(.white)
                        Image(systemName: "speaker.wave.3.fill")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
                VStack {
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "ellipsis.bubble")
                                .font(Font.title.weight(.regular))
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "airplayaudio")
                                .font(Font.title.weight(.regular))
                                .foregroundColor(Color.white)
                        }
                        .padding(.leading, 15)
                        
                        Spacer()
                        
                        Button(action: {
                        }) {
                            Image(systemName: "line.3.horizontal")
                                .font(Font.title.weight(.regular))
                                .padding() // Отступы внутри кнопки
                                .foregroundColor(.white) // Цвет текста
                                .clipShape(RoundedRectangle(cornerRadius: 10)) // Закругленные углы кнопки
                                .overlay(
                                    Image(systemName: "shuffle")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.black.opacity(0.6))
                                        .padding(5)
                                        .background(Color.systemGray5.opacity(0.6))
                                        .clipShape(Circle())
                                        .frame(width: 20, height: 20)
                                        .offset(x: 10, y: -10)
                                )
                        }
                    }
                    .padding(.top, 15)
                    .padding(.horizontal, 35)
                    .padding(.leading, 25)
                    .padding(.bottom, 20)
                }
            }
            .padding(.horizontal,30)
            .onAppear {
                self.duration = 180.0
            }
        }
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
        .opacity(1.0)
        .background(
            Image("musicList-12")
                .resizable()
                .scaledToFill()
                .blur(radius: 70)
                .opacity(0.7)
        )
        
    }
    
    func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timeInterval)
        let formatter = DateFormatter()
        formatter.dateFormat = "mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter.string(from: date)
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
