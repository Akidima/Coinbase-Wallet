//
//  TextInRoundedRectangle.swift
//  Coinbase Wallet
//
//  Created by GA on 10/02/2024.
//

import SwiftUI
import UniformTypeIdentifiers

struct TextInRoundedRectangle: View {
  let text: String


  @State private var isBlurred = false

  var body: some View {
//      VStack {
//        ZStack {
//          // Create an invisible inner RoundedRectangle for clipping
//          RoundedRectangle(cornerRadius: 10)
//            .fill(.clear)
//            .frame(width: 380, height: 100)
//
//          // Create a stroked RoundedRectangle for the border
//          RoundedRectangle(cornerRadius: 20)
//            .stroke(Color("TextBG"), lineWidth: 3)
//            .frame(width: 360, height: 180)
//
//          // Overlay text with heavy blur when toggled
//          Text(text)
//            .font(.system(size: 20))
//            .fontWeight(.light)
//            .foregroundStyle(Color("TextBG"))
//            .opacity(isBlurred ? 1 : 1) // Completely hide text when blurred
//            .blur(radius: isBlurred ? 10 : 0) // Increase blur radius for stronger effect
//            .padding()
//            .multilineTextAlignment(.center)
//
//
//          // Toggle button with SF symbol
//          Image(systemName: isBlurred ? "eye.slash" : "eye")
//            .font(.system(size: 15))
//            .foregroundColor(Color("TextBG"))
//            .opacity(0.8)
//            .offset(x: 150, y:72)
//            .onTapGesture {
//              isBlurred.toggle()
//            }
//        }
//
//        Button{
//          copyToClipboard(text: text)
//        }label: {
//          HStack{
//            Image("copy")
//              .resizable()
//              .aspectRatio(contentMode: .fit)
//              .foregroundStyle(Color("Backbt"))
//              .frame(width: 25, height: 30)
//
//
//            Text("Copy to Clipboard")
//              .bold()
//              .font(.system(size: 15))
//
//          }
//        }.foregroundStyle(Color("TextBG"))
//          .font(.system(size: 14))
//      }


    VStack(spacing: 3){
      ZStack{
          RoundedRectangle(cornerRadius: 10)
            .fill(.clear)
            .frame(width: 360, height: 100)
            .padding()

          RoundedRectangle(cornerRadius: 20)
            .stroke(Color("TextBG"), lineWidth: 3)
            .frame(width: 370, height: 180)
            .padding()

          Image(systemName: isBlurred ? "eye.slash" : "eye")
                      .font(.system(size: 18))

                      .opacity(0.8)
                      .offset(x: 153, y:72)
                      .onTapGesture {
                       isBlurred.toggle()
                     }

          Text(text)
            .font(.custom("Barlow-Light", size: 18))
            .opacity(isBlurred ? 1 : 1)
            .fontDesign(.rounded)
            .blur(radius: isBlurred ? 4 : 0)
            .padding()
      }//ZStack
      .padding()

     

    }//Vstack
  }
}

func copyToClipboard(text: String) {
  let pasteboard = UIPasteboard.general
  pasteboard.setValue(text, forPasteboardType: UTType.plainText.identifier)
}

#Preview {
  TextInRoundedRectangle(text: "sumerberry,submarine,screen,money, wallet, crypto,basement,crypto,wallet,bitcoin,coinbase")


}

