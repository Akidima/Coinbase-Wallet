//
//  SavedIt.swift
//  Coinbase Wallet
//
//  Created by GA on 10/02/2024.
//

import SwiftUI

struct SavedIt: View {
  @State private var tags: [String] = ["element", "shoes", "hybrid", "simple", "brain","limb", "serenity", "limb"]
  @State private var selectedTags: [String] = ["Apple"]

    var body: some View {
      VStack(alignment: .leading, spacing: 34){
       Text("You saved it, right?")
          .font(.custom("OpenSansSemiCondensed-Bold", size: 30))
          .bold()

        Text("Verify that you saved your secret recovery phase by tapping the first(1st) then last(12th) word.")
          .font(.system(size: 18))
          .opacity(0.8)
          .bold()

        HStack(spacing: 12){
          ForEach(selectedTags, id: \.self) { tag in
            TagView(tag, "checkmark", .primary)
          }
        }

      }.padding()
    }
}


//Tag View
@ViewBuilder
func TagView(_ tag: String, _ icon: String, _ color: Color) -> some View {
  HStack(spacing: 10) {
    Text(tag)
      .font(.title2)
      .fontWeight(.medium)
      .foregroundStyle(Color("Colorbd"))
  }.frame(height: 65)
    .padding(.horizontal, 30)
    .background {
      RoundedRectangle(cornerRadius: 10)
        .fill(color.gradient)
    }

}

#Preview {
    SavedIt()
}
