//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterGlass {
  case clear
  case identity
  case regular
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: Glass {
    switch self {
    case .clear: .clear
    case .identity: .identity
    case .regular: .regular
    }
  }
}
