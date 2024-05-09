//
//  ClaimUsername.swift
//  Coinbase Wallet
//
//  Created by GA on 10/02/2024.
//

import SwiftUI

struct ClaimUsername: View {
    var body: some View {
      VStack(spacing: 40){
        VStack {
          Text("Claim your free")

          Text("username")
        }.font(.system(size: 50))
          .fontWeight(.light)


        Text("Remembering your wallet address is easier with a free username from Coinbase Wallet.")
          .multilineTextAlignment(.center)
          .font(.system(size: 23))
          .fontDesign(.rounded)


        VStack(spacing: 30){
          ButtonBackUp(text: "Claim my username")
          ButtonBackUp(text: "Maybe Later")
            .opacity(0.8)
        }.padding(.top, 40)
      }.padding()
      .offset(x:0 , y: 100)



    }
}

#Preview {
    ClaimUsername()
}
