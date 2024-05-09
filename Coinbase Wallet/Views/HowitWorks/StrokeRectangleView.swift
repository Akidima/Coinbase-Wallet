//
//  StrokeRectangleView.swift
//  Coinbase Wallet
//
//  Created by GA on 06/05/2024.
//

import SwiftUI

struct StrokeRectangleView: View {
    var body: some View {
      ZStack{

        Rectangle()
          .strokeBorder(LinearGradient(gradient: Gradient(colors: [.red, .orange,.yellow, .green,.blue, .purple, .pink]), startPoint: .top, endPoint: .bottom), lineWidth: 40)
          .frame(width: 240, height: 260)
          .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange,.yellow, .green,.blue, .purple, .pink]), startPoint: .top, endPoint: .bottom))

        Rectangle()
          .frame(width: 200, height: 200)
          .foregroundStyle(Color("Colorbd"))
      }
    }
}

#Preview {
    StrokeRectangleView()
}
