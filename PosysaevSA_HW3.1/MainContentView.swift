//
//  MainContentView.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct MainContentView: View {
    
    @State private var showColorSection = 100
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    Section(color: Color.red)
                        .opacity(showColorSection == 0 ? 1 : 0.3)
                    Section(color: Color.yellow)
                        .opacity(showColorSection == 1 ? 1 : 0.3)
                    Section(color: Color.green)
                        .opacity(showColorSection == 2 ? 1 : 0.3)
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
