//
//  ContentView.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .frame(width: 150, height: 400)
                    .foregroundColor(.white)
                    .border(Color.blue, width: 5)
                    .cornerRadius(10)
                VStack {
                    Section(color: .red)
                    Section(color: .yellow)
                    Section(color: .green)
                }
            }
            
            Spacer()
            
            Button(action: {
                actionOfButton()
            }, label: {
                Text("START")
                    .font(.largeTitle)
                    .padding(.all, 10)
                    .padding(.horizontal, 50)
                    .shadow(color: Color.black,
                            radius: 1.0,
                            x: CGFloat(2),
                            y: CGFloat(2))
            })
            .border(Color.white)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(15.0)
        }
    }
    private func actionOfButton() {
        print("wgegr")
        
    }
    
}


//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
