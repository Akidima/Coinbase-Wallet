//
//  ManageNFTView.swift
//  Coinbase Wallet
//
//  Created by GA on 24/02/2024.
//

import SwiftUI

struct ManageNFTView: View {
  let aniImages:[String] =  ["nft01","nft02","nft03","nft04","nft05","nft06","nft07","nft08"]
  @State private var offset:CGFloat = 0.0


  var body: some View {
    VStack {
      ZStack {
        StrokeRectangleView()


        GeometryReader { geo in
          HStack(spacing: 0){
            ForEach(aniImages.indices, id: \.self) { index in
              Image(aniImages[index])
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.top, 10)

            }.padding()
              .offset(x: offset)
              .animation(Animation.linear(duration: Double(aniImages.count) * 1.2).repeatForever(autoreverses: false)
              )
              .onAppear {
                self.offset = -UIScreen.main.bounds.width * CGFloat(self.aniImages.count)
              }
          }
        }


      }.padding(.top, 55)
      .padding(.bottom, 145)
      //ZSTACK



      VStack {
        VStack {
          Text("Manage your")
            .font(.system(size: 35))

          Text("NFTS")
            .font(.system(size: 40))
            .bold()
        }.padding(.bottom, 80)


        VStack(spacing: 30){
          ButtonBackUp(text: "Create a New Wallet")

          Text("I already have a wallet")
            .bold()
        }

      }.padding(.bottom, 50)








    }//VSTACK





      }

    }



#Preview {
    ManageNFTView()
}
