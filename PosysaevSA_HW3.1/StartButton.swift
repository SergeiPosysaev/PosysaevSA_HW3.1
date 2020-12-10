//
//  StartButton.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct StartButton: View {
    @State private var showNext = false
    @State private (set) var showColorSection = 0
    
    var body: some View {
        
        Button(action: {
            if !showNext { showNext.toggle() }
            
            showColorSection += 1
            if showColorSection > 2 {
                showColorSection = 0
            }

        }) {
            let caption = showNext ? "NEXT" : "START"
            Text(caption)
                .font(.largeTitle)
                .tracking(3)
                .padding(.all, 10)
                .padding(.horizontal, 50)
                .shadow(color: Color.black,
                        radius: 2.0,
                        x: CGFloat(1),
                        y: CGFloat(2))
                .accentColor(.yellow)
        }
        .background(Color.init(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
        .foregroundColor(.white)
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 4))
        .padding(.bottom, 30)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
