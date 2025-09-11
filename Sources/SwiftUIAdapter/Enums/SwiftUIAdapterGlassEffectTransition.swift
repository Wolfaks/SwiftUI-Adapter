//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterGlassEffectTransition {
  case identity
  case matchedGeometry
  case materialize
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: GlassEffectTransition {
    switch self {
    case .identity: .identity
    case .matchedGeometry: .matchedGeometry
    case .materialize: .materialize
    }
  }
}
