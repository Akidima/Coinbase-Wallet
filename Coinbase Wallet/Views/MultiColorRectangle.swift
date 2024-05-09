//
//  ManageNFTView.swift
//  Coinbase Wallet
//
//  Created by GA on 24/02/2024.
//

import SwiftUI

struct MultiColorRectangle: View {

  @State var rotation:CGFloat = 0.0
    var body: some View {
      ZStack {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
          .frame(width: 440, height: 430)
          .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange,.yellow, .green,.blue, .purple, .pink]), startPoint: .top, endPoint: .bottom))
          .rotationEffect(.degrees(rotation))
          .mask {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
              .stroke(lineWidth: 3)
              .frame(width: 250, height: 335)
              .blur(radius: 10)
          }

        RoundedRectangle(cornerRadius: 20, style: .continuous)
          .frame(width: 260,height: 340)
          .foregroundStyle(Color("Colorbd"))
        RoundedRectangle(cornerRadius: 20, style: .continuous)
          .frame(width: 500,height: 440)
          .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink]), startPoint: .top, endPoint: .bottom))
          .rotationEffect(.degrees(rotation))
          .mask {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
              .stroke(lineWidth: 3)
              .frame(width: 256, height: 336)
          }

      }
      .onAppear{
        withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                rotation = 360
        }
      }

    }
}

#Preview {
    MultiColorRectangle()
}



