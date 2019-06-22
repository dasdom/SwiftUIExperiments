//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct iOSCalculator : View {
  
  enum KeyType {
    case misc
    case digit
    case calcSign
    
    var color: Color {
      switch self {
      case .misc:
        return .init(white: 0.9)
      case .calcSign:
        return .orange
      default:
        return .init(white: 1.0)
      }
    }
    
    var font: Font {
      switch self {
      case .digit:
        return Font.custom("HelveticaNeue-Thin", size: 25)
      case .calcSign:
        return Font.custom("HelveticaNeue-Light", size: 45)
      default:
        return Font.custom("HelveticaNeue-Thin", size: 20)
      }
    }
    
    var textColor: Color {
      switch self {
      case .calcSign:
        return .white
      default:
        return .black
      }
    }
  }
  
  enum Element : String {
    case correction, plusminus, percent, divide
    case seven, eight, nine, times
    case four, five, six, minus
    case one, two, three, plus
    case zero, comma, equals
    
    var title: Text {
      let string: String
      switch self {
      case .correction: string = "C"
      case .plusminus: string = "±"
      case .percent: string = "%"
      case .divide: string = "÷"
        
      case .seven: string = "7"
      case .eight: string = "8"
      case .nine: string = "9"
      case .times: string = "×"
        
      case .four: string = "4"
      case .five: string = "5"
      case .six: string = "6"
      case .minus: string = "-"
        
      case .one: string = "1"
      case .two: string = "2"
      case .three: string = "3"
      case .plus: string = "+"
        
      case .zero: string = "0"
      case .comma: string = ","
      case .equals: string = "="
        
      }
      return Text(string)
    }
  }
  
  struct Key : Hashable {
    var id = UUID()
    var type: KeyType
    var element: Element
  }
  
  let keys = [
    [Key(type: .misc, element: .correction),
     Key(type: .misc, element: .plusminus),
     Key(type: .misc, element: .percent),
     Key(type: .calcSign, element: .divide)],
    [Key(type: .digit, element: .seven),
     Key(type: .digit, element: .eight),
     Key(type: .digit, element: .nine),
     Key(type: .calcSign, element: .times)],
    [Key(type: .digit, element: .four),
     Key(type: .digit, element: .five),
     Key(type: .digit, element: .six),
     Key(type: .calcSign, element: .minus)],
    [Key(type: .digit, element: .one),
     Key(type: .digit, element: .two),
     Key(type: .digit, element: .three),
     Key(type: .calcSign, element: .plus)],
    [Key(type: .digit, element: .zero),
     Key(type: .digit, element: .zero),
     Key(type: .digit, element: .comma),
     Key(type: .calcSign, element: .equals)]
  ]
  
  var body: some View {
    VStack(spacing: 0) {
      VStack(alignment: .trailing) {
        Spacer()
        
        HStack {
          Spacer()
          
          Text("42")
            .font(.custom("HelveticaNeue-Thin", size: 60))
            .foregroundColor(.white)
            .lineLimit(nil)
        }
        //        Spacer()
        
        }
        .background(Color.black)
      
      VStack(spacing: 0.5) {
        ForEach(keys.identified(by: \.self)) { row in
          HStack(spacing: 0.5) {
            ForEach(row.identified(by: \.id)) { key in
              Button(action: {
                print("\(key.element.title)")
              }, label: {
                key.element.title
                  .font(key.type.font)
                  .foregroundColor(key.type.textColor)
              })
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .background(key.type.color)
            }
            
            }
            .padding([.leading, .trailing], 1)
        }
        }
        .padding([.top, .bottom], 1)
        .background(Color.black)
    }
    .navigationBarTitle(Text("iOS Calculator"), displayMode: .inline)
  }
}

