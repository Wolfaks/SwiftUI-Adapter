//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterScrollEdgeEffectStyle {
  case automatic
  case hard
  case soft
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: ScrollEdgeEffectStyle {
    switch self {
    case .automatic: .automatic
    case .hard: .hard
    case .soft: .soft
    }
  }
}
