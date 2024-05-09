//
//  EasyToRemeber.swift
//  Coinbase Wallet
//
//  Created by GA on 22/02/2024.
//

import SwiftUI

struct EasyToRemeber: View {
    var body: some View {
      VStack {
        Image("IMG_1076")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 400, height: 200)
        .padding(.top, 30)

        Spacer()

        VStack(spacing: 2){
          Text("Easy to remember")
            .font(.custom("PublicSans-Regular", size: 35))

          Text("Your username can be anything. For example, superjane. Your address will then be suoerjane.cb.id.")
            .multilineTextAlignment(.center)
            .font(.custom("Public-Sans-Regualr", size: 20))
            .padding()
        }//VStack

        Spacer()

        VStack(spacing: 15){
            ButtonBackUp(text: "Claim my username")

            ButtonBackUp(text: "Maybe later")
                    .opacity(0.7)
          }.padding(.bottom, 23)
        //VStack



      }//VStack
    }
}

#Preview {
    EasyToRemeber()
}
