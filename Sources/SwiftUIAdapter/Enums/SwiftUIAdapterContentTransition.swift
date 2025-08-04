//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterContentTransition {
  case identity
  case numericText
  case opacity
  
  @available(iOS 16.0, macOS 13.0, *)
  var value: ContentTransition {
    switch self {
    case .identity: .identity
    case .numericText: .numericText()
    case .opacity: .opacity
    }
  }
}
