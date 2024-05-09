//
//  IntroductScreen.swift
//  Coinbase Wallet
//
//  Created by GA on 11/02/2024.
//

import SwiftUI

struct IntroductScreen: View {
  @State private var isActive = false
  @State private var size = 0.8
  @State private var opacity = 0.8
  @State private var animationAmount = 1.0

    var body: some View {
      VStack {
          HStack {
            Text("coinbase")
              .font(.custom("OpenSansSemiCondensed-Bold", size: 47))
             

            Text("BLACK")
              .font(.system(size: 35))
              .bold()
              .offset(y: 5)
          }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
              withAnimation(.easeInOut(duration: 3.0)) {
                self.size = 0.9
                self.opacity = 1.0
              } 
              DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                isActive = true
              }
          }
          NavigationLink(destination: ProtectWallet(), isActive: $isActive) {
            EmptyView()
          }

        }


//      DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//            isActive = true
//      }
    }

  init() {
    for familyName in UIFont.familyNames {
      print(familyName)

      for fontName in UIFont.fontNames(forFamilyName: familyName) {

          print("--- \(fontName)")
      }
    }
  }
}

#Preview {
    IntroductScreen()
}
