//
//  MainContentView.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct MainContentView: View {
    
    let colors = [Color.red, .yellow, .green]
    @State private var showColorSection = 0
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    ForEach(0..<colors.count) {
                        Section(color: colors[$0])
                    }
                    Text("\(showColorSection)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                .padding(.top, 10)
                
                Spacer()
                
                StartButton(showColorSection: $showColorSection)
            }
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
