//
//  ProtectWallet.swift
//  Coinbase Wallet
//
//  Created by GA on 10/02/2024.
//

import SwiftUI

struct ProtectWallet: View {
  @State private var isChecked = false
  @Environment(\.dismiss) var dismiss
    var body: some View {
//      VStack(alignment: .leading, spacing: 20){
//        
//        HStack {
//          Capsule()
//            .fill(Color("Backbt"))
//          .frame(width: 45, height: 7)
//
//
//          Capsule()
//            .fill(Color("Backbt"))
//            .frame(width: 45, height: 7)
//
//          Capsule()
//            .fill(Color("Backbt"))
//            .frame(width: 45, height: 7)
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
//        }.offset(x: 60,y: -158)
//
//
//        VStack(alignment: .leading, spacing: 15){
//          Text("Protect your wallet")
//            .font(.system(size: 32))
//            .font(.system(.headline, design: .rounded))
//          .bold()
//
//          Text("This extra layer of security helps someone with your phone from accessing your funds.")
//            .font(.system(size: 18))
//            .opacity(0.8)
//            .bold()
//        }.padding()
//          .offset(x:-5 , y: -130)
//
//
//
//
//
//        VStack{
//          HStack{
//            Toggle("Enabled",  isOn: $isChecked)
//              .toggleStyle(CheckboxStyle())
//              .font(.system(size: 32))
//            Text("I agree to the [terms](https://www.coinbase.com/legal/user_agreement/united_states) and [privacy](https://www.coinbase.com/legal/user_agreement/united_states)")
//              .font(.system(size: 20))
//            
//            
//          }.padding()
//
//          ButtonBackUp(text: "Use fingerprint")
//            .opacity(0.3)
//          ButtonBackUp(text: "Create passcode")
//            .opacity(0.75)
//        }.offset(x:-5 , y: 190)
//
//
//      }.padding()
//      .animation(.easeInOut(duration: 5))


      VStack {

        HStack{

          Capsule()
            .fill(Color("Backbt"))
            .frame(width: 45, height: 7)

          Capsule()
            .fill(Color("Backbt"))
            .frame(width: 45, height: 7)

          Capsule()
            .fill(Color("Backbt"))
            .frame(width: 45, height: 7)

          Capsule()
            .fill(Color("Backbt"))
            .frame(width: 45, height: 7)
            .opacity(0.3)

          Capsule()
            .fill(Color("Backbt"))
            .frame(width: 45, height: 7)
            .opacity(0.3)
            

        }.offset(x: 15, y: 5)
        //HStack
        VStack(alignment: .leading, spacing: 20){
          Text("Protect your wallet")
            .font(.custom("PublicSans-Regular", size: 30))
            .bold()

          Text("This extra layer of security helps prevent someone with your phone from accessing your funds.")
                .font(.custom("PublicSans-Regular", size: 16))
                .multilineTextAlignment(.leading)

        }//VStack
        .padding()
          .padding(.top, 30)

        Spacer()

        VStack{
          HStack{
            Toggle("Enabled", isOn: $isChecked)
              .toggleStyle(CheckboxStyle())
              .font(.system(size: 25))

            Text("I agree to the [terms](https://www.coinbase.com/legal/user_agreement/united_states) and [privacy policy](https://www.coinbase.com/legal/user_agreement/united_states)")
                    .font(.system(size: 16))
          }//HStack

          ButtonBackUp(text: "Use fingerprint")
            .opacity(0.3)
          ButtonBackUp(text: "Create Password")
            .opacity(0.75)

        }.padding()
        //VStack
      }//VStack
      .navigationBarBackButtonHidden(true)
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          Button(action: {
              dismiss()
          }) {
              Image(systemName: "arrow.backward")
                  .foregroundStyle(Color("Backbt"))
          }
        }
      }
    }
}

#Preview {
    ProtectWallet()
}

struct CheckboxStyle: ToggleStyle {
  func makeBody(configuration: Configuration) -> some View {
    Button {
      configuration.isOn.toggle()
    } label: {
      if configuration.isOn {
        Image(systemName: "checkmark.square.fill")
          .foregroundStyle(.blue)
      } else {
        Image(systemName: "square")
          .foregroundStyle(.gray)
      }
    }
  }
}
