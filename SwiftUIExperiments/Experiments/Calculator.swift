//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct Calculator : View {
  
  enum KeyType {
    case misc
    case function
    case digit
    case calcSign
    
    var color: Color {
      switch self {
      case .digit:
        return .init(white: 0.9)
      default:
        return .init(white: 1.0)
      }
    }
  }
  
  enum Element : String {
    case help, mail, fourtyTwo, empty, arrowLeft, arrowRight
    case second, const, deg, hist, ans, del
    case sin, cos, tan, openParentheses, closeParentheses, divide
    case exp, ln, seven, eight, nine, times
    case log2, log10, four, five, six, minus
    case power, sqrt, one, two, three, plus
    case pi, ee, zero, dot, equals
    
    var title: Text {
      let string: String
      switch self {
      case .fourtyTwo: string = "42"
      case .empty: string = " "
      case .arrowLeft: string = "←"
      case .arrowRight: string = "→"
        
      case .second: string = "2nd"
        
      case .openParentheses: string = "("
      case .closeParentheses: string = ")"
      case .divide: string = "÷"
        
      case .seven: string = "7"
      case .eight: string = "8"
      case .nine: string = "9"
      case .times: string = "×"
        
      case .four: string = "4"
      case .five: string = "5"
      case .six: string = "6"
      case .minus: string = "-"
        
      case .power: string = "^"
      case .sqrt: string = "√"
      case .one: string = "1"
      case .two: string = "2"
      case .three: string = "3"
      case .plus: string = "+"
        
      case .zero: string = "0"
      case .dot: string = "."
      case .equals: string = "="
        
      default:
        string = rawValue
      }
      return Text(string).font(.body).bold()
    }
    
  }
  
  struct Key : Hashable {
    var id = UUID()
    var type: KeyType
    var element: Element
  }
  
  let keys = [
    [Key(type: .misc, element: .help),
     Key(type: .misc, element: .mail),
     Key(type: .misc, element: .fourtyTwo),
     Key(type: .misc, element: .empty),
     Key(type: .misc, element: .arrowLeft),
     Key(type: .misc, element: .arrowRight)],
    [Key(type: .misc, element: .second),
     Key(type: .misc, element: .const),
     Key(type: .misc, element: .deg),
     Key(type: .misc, element: .hist),
     Key(type: .misc, element: .ans),
     Key(type: .misc, element: .del)],
    [Key(type: .function, element: .sin),
     Key(type: .function, element: .cos),
     Key(type: .function, element: .tan),
     Key(type: .misc, element: .openParentheses),
     Key(type: .misc, element: .closeParentheses),
     Key(type: .calcSign, element: .divide)],
    [Key(type: .function, element: .exp),
     Key(type: .function, element: .ln),
     Key(type: .digit, element: .seven),
     Key(type: .digit, element: .eight),
     Key(type: .digit, element: .nine),
     Key(type: .calcSign, element: .times)],
    [Key(type: .function, element: .log2),
     Key(type: .function, element: .log10),
     Key(type: .digit, element: .four),
     Key(type: .digit, element: .five),
     Key(type: .digit, element: .six),
     Key(type: .calcSign, element: .minus)],
    [Key(type: .function, element: .power),
     Key(type: .function, element: .sqrt),
     Key(type: .digit, element: .one),
     Key(type: .digit, element: .two),
     Key(type: .digit, element: .three),
     Key(type: .calcSign, element: .plus)],
    [Key(type: .misc, element: .pi),
     Key(type: .misc, element: .ee),
     Key(type: .digit, element: .zero),
     Key(type: .digit, element: .zero),
     Key(type: .misc, element: .dot),
     Key(type: .calcSign, element: .equals)]
  ]
  
  
  var body: some View {
    VStack(alignment: .leading) {
      
      Text("1+2+3×(4-5)+sin(0.6)\n= 0.564642473395035")
        .padding(8)
        .lineLimit(nil)
        .font(.body)
      
      Spacer()
      Divider()
      
      Text(" = 0.564642473395035")
        .padding([.leading, .trailing], 8)
        .font(.body)
      
      VStack(spacing: 1) {
        ForEach(keys.identified(by: \.self)) { row in
          HStack(spacing: 1) {
            ForEach(row.identified(by: \.id)) { key in
              Button(action: {
                print("\(key.element.title)")
              }, label: {
                key.element.title
              })
                .padding([.top, .bottom])
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(key.type.color)
            }
            
            }
            .padding([.leading, .trailing], 1)
        }
        }
        .padding([.top, .bottom], 1)
        .background(Color(white: 0.7))
    }
    .navigationBarTitle(Text("Calculator"), displayMode: .inline)
  }
}
