//
//  MusicPlayer.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/05/05.
//

import SwiftUI
import AVKit

struct MusicPlayer: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State var play: Bool = false
    
    var musicFileName: String
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        if play == true {
                            self.audioPlayer.pause()
                        } else {
                            self.audioPlayer.play()
                        }
                        play.toggle()
                        
                    }) {
                        if play == true {
                            Image(systemName: "pause.circle").resizable()
                                .frame(width: 60, height: 60)
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Image(systemName: "play.circle").resizable()
                                .frame(width: 60, height: 60)
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: musicFileName, ofType: "mp3")
            if sound != nil {
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            } else {
                return
            }
            
        }
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer(musicFileName: "스토커")
    }
}
