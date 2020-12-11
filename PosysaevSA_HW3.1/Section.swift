//
//  Section.swift
//  PosysaevSA_HW3.1
//
//  Created by Sergei Posysaev on 10.12.2020.
//

import SwiftUI

struct Section: View {
    
    var color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: 100, height: 100)
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 4))
        }
    }    
}

struct Section_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
