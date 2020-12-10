//
//  MainContentView.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct MainContentView: View {
    
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .frame(width: 150, height: 400)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .border(Color.black, width: 3)
                    .cornerRadius(10)
                VStack {
                    Section(color: .red)
                    Section(color: .yellow)
                    Section(color: .green)
                }
            }
            
            Spacer()
            
            StartButton()
        }
    }
}


//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
