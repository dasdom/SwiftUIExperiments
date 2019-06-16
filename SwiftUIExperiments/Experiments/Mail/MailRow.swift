//  Created by dasdom on 14.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

//extension HorizontalAlignment {
//  private enum LeadingText : AlignmentID {
//    static func defaultValue(in context: ViewDimensions) -> Length {
//      return context[.leading]
//    }
//  }
//  static let leadingText = HorizontalAlignment(LeadingText.self)
//}

struct MailRow : View {
  
  let mail: Mail
  
  var body: some View {
//    VStack(alignment: .leadingText) {
    VStack() {
      HStack {
        Image(systemName: "circle.fill")
          .foregroundColor(.blue)
          .font(.footnote)
        
        Text(mail.sender)
          .font(.body)
          .bold()
//          .alignmentGuide(.leadingText, computeValue: { d in d[.leading] })
        
        Spacer()
        
        Text(mail.date)
          .font(.callout)
          .foregroundColor(Color.gray)
      }
      
      VStack(alignment: .leading, spacing: 3) {
        Text(mail.subject)
          .font(.callout)
        
        Text(mail.text)
          .lineLimit(2)
          .font(.callout)
          .foregroundColor(Color.gray)

      }
//      .alignmentGuide(.leadingText, computeValue: { d in d[.leading] })
    }
  }
}

