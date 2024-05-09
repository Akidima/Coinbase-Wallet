//
//  BackupWalletScreen.swift
//  Coinbase Wallet
//
//  Created by GA on 09/02/2024.
//

import SwiftUI
import UniformTypeIdentifiers


struct BackupWalletScreen: View {


  //  @Environment(\.dismiss) var dismiss
  //
  //  var body: some View {
  //
  //      VStack(alignment: .leading, spacing: 10){
  //        HStack {
  //          Capsule()
  //            .fill(Color("Backbt"))
  //          .frame(width: 45, height: 7)
  //
  //
  //
  //          Capsule()
  //            .fill(Color("Backbt"))
  //            .frame(width: 45, height: 7)
  //            .opacity(0.3)
  //
  //          Capsule()
  //            .fill(Color("Backbt"))
  //            .frame(width: 45, height: 7)
  //            .opacity(0.3)
  //
  //          Capsule()
  //            .fill(Color("Backbt"))
  //            .frame(width: 45, height: 7)
  //            .opacity(0.3)
  //
  //          Capsule()
  //            .fill(Color("Backbt"))
  //            .frame(width: 45, height: 7)
  //            .opacity(0.3)
  //        }.offset(x: 70,y: -42)
  //
  //
  //
  //
  //
  //
  //
  //        Text("Back up your wallet")
  //          .font(.custom("PublicSans-Regular", size: 32))
  //          .padding()
  //
  //        Text("Your secret recovery phrase is used to recover your crypto if you lose your phone or switch to a different wallet.")
  //                  .font(.custom("OpenSans-Regular", size: 17.4))
  //                  .padding()
  //                  .opacity(0.5)
  //
  //        Text("Save these 12 words in secure location, such as a password manager, and never share them with anyone.")
  //                  .font(.custom("OpenSans-Regular", size: 17.4))
  //                  .padding()
  //                  .opacity(0.5)
  //
  //        TextInRoundedRectangle(text: "sumerberry, submarine, bearch, funmaker, dumetruvk, stuff, flakes, snow, screen, money, wallet, crypto, basement")
  //
  //        VStack(spacing: 10){
  //          ButtonBackUp(text: "Back up on Google Drive")
  //          ButtonBackUp(text: "Back up Manually")
  //            .opacity(0.3)
  //        }.padding()
  //          .padding(.top, 20)
  //          .padding(.trailing, 15)
  //
  //      }//VStack
  //        .padding()
  //        .navigationBarBackButtonHidden(true)
  //        .toolbar {
  //          ToolbarItem(placement: .topBarLeading) {
  //            Button(action: {
  //              dismiss()
  //            }) {
  //              Image(systemName: "arrow.backward")
  //                .foregroundStyle(Color("Backbt"))
  //            }
  //
  //          }
  //      }

  var body: some View {
    VStack(alignment: .leading, spacing: 30){

      Text("Back up your wallet")
        .font(.custom("PublicSans-Regular", size: 30))
        .padding(.leading, 50)

      Text("Your secret recovery phrase is used to recover crypto if you lose your phone or swtich to a different wallet.")
        .font(.custom("OpenSans-Regular", size: 17))
//        .fontWeight(.medium)
        .padding(.leading, 50)
        .opacity(0.5)
        .multilineTextAlignment(.center)

      Text("Save these 12 words in a secure location, such as a password manager, and never share them with anyone.")
        .font(.custom("OpenSans-Regular", size: 17))
        .fontWeight(.medium)
        .padding(.leading, 48)
        .multilineTextAlignment(.center)
        .opacity(0.5)
//        .lineLimit(2)



        TextInRoundedRectangle(text: "sumerberry, submarine, bearch, funmaker, dumetruvk, stuff, flakes, snow, screen, money, wallet, crypto, basement")
              





      VStack(spacing: 12){
        ButtonBackUp(text: "Back up on Google Drive")
        ButtonBackUp(text: "Back up Manually")
          .opacity(0.3)
      }.padding(.leading, 50)

    }.padding()
    //VStack
  }



}

#Preview {
    BackupWalletScreen()
}




