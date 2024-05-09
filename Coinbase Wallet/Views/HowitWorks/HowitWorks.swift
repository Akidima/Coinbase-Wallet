//
//  HowitWorks.swift
//  Coinbase Wallet
//
//  Created by GA on 10/02/2024.
//

import SwiftUI

struct HowitWorks: View {
    var body: some View {
//      VStack(spacing: 15){
//        VStack{
//          Image("IMG_1074")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 300, height: 100)
//
//          HStack(spacing: 30){
//            Image(systemName: "arrow.down")
//              .font(.system(size: 50))
//
//            Image(systemName: "arrow.down")
//              .font(.system(size: 50))
//
//            Image(systemName: "arrow.down")
//              .font(.system(size: 50))
//          }
//
//          Image("IMG_1075")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 300, height: 100)
//
//          }.padding()
//          .offset(y: -55)
//
//        VStack(spacing: 20){
//          Text("How it works")
//            .font(.system(size: 34))
//            .font(.system(.headline, design: .rounded))
//            .bold()
//
//          Text("Standard wallet addresses are 42 digits long and diffcult to remeber. We'll give you a free ENS name that maps to your address.")
//            .multilineTextAlignment(.center)
//            .font(.system(size: 15))
//            .bold()
//        }.padding()
//          .offset(y: 45)
//
//        VStack{
//          ButtonBackUp(text: "Claim your username")
//            .opacity(1.0)
//
//          ButtonBackUp(text: "Maybe Later")
//            .opacity(0.3)
//        }.padding()
//        .offset(y:75)
//
//      }.padding()
//      .animation(.easeInOut(duration: 3))

      VStack(spacing: 52){
        VStack(spacing: 1.3){
          Image("IMG_1074")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 100)

          HStack(spacing: 30){
            Image(systemName: "arrow.down")
              .font(.system(size: 50))

            Image(systemName: "arrow.down")
              .font(.system(size: 50))

            Image(systemName: "arrow.down")
              .font(.system(size: 50))
          }//HStack

          Image("IMG_1075")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 100)
        }//VStack

        VStack(spacing: 3){
          Text("How it works")
            .font(.custom("PublicSans-Bold", size: 35))
            .fontWeight(.regular)

          Text("Standard wallet addresses are 42 digits long and diffcult to remeber. We'll give you a free ENS name that maps to your address.")
            .multilineTextAlignment(.center)
            .font(.system(size: 17))
            .fontWeight(.medium)
            .padding()
        }//VStack

        VStack(spacing: 12){
          ButtonBackUp(text: "Claim my username")
            .opacity(1.0)
          ButtonBackUp(text: "Maybe later")
            .opacity(0.3)
        }//VStack
      }//VStack
    }
}

#Preview {
    HowitWorks()
}
