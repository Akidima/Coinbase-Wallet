////
////  TagLayout.swift
////  Coinbase Wallet
////
////  Created by GA on 07/05/2024.
////
//
//import SwiftUI
//
//struct TagLayout: Layout {
//  /// Layout Presentation
//  var alignment: Alignment = .center
//
//  /// Both Horizontal & Vertical
//  var spacing: CGFloat = 10
//
//  func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
//    <#code#>
//  }
//  
//  func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
//    <#code#>
//  }
//
//  ///  Generating Rows Based on Available Size
//  func generateRows(_ maxWidth: CGFloat, _ proposal: ProposedViewSize, _ subviews: Subviews) -> [[LayoutSubviews.Element]] {
//    var row: [LayoutSubviews.Element] = []
//    var rows: [LayoutSubviews.Element] = []
//
///// Origin
//    var origin = CGRect.zero.origin
//
//    for view in subviews {
//      let viewSize = view.sizeThatFits(proposal)
//
//      /// Pushing to New Row
//      if (origin.x + viewSize.width + spacing) > maxWidth {
//        rows.append(row)
//        row.removeAll()
//        ///
//        origin.x = 0
//        row.append(view)
//        ///Updating Origin X
//        origin.x += (viewSize.width + spacing)
//      } else {
//        /// Adding item to Same Row
//      }
//  }
//
//}
//
//
//}
//
//#Preview {
//    SavedIt()
//}
