//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterFontWidth {
  case compressed
  case condensed
  case expanded
  case standard
  
  @available(iOS 16.0, macOS 13.0, *)
  var value: Font.Width {
    switch self {
    case .compressed: .compressed
    case .condensed: .condensed
    case .expanded: .expanded
    case .standard: .standard
    }
  }
}
