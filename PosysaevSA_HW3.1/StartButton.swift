//
//  StartButton.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct StartButton: View {
    @State private var showNext = false
    
    var body: some View {
        
        Button(action: {
            if !showNext {
                showNext.toggle()
            }
            
        }) {
            let caption = showNext ? "NEXT" : "START"
            Text(caption)
                .font(.largeTitle)
                .tracking(3)
                .padding(.all, 10)
                .padding(.horizontal, 50)
                .shadow(color: Color.black,
                        radius: 3.0,
                        x: CGFloat(2),
                        y: CGFloat(2))
                .accentColor(.yellow)
                .border(Color.black, width: 3)
        }
        .border(Color.white)
        .background(Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.bottom, 30)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
