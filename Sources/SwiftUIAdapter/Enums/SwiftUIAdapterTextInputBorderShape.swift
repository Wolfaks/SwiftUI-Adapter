//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterTextInputBorderShape {
  case automatic
  case capsule
  case roundedRectangle
  
  @available(iOS 27.0, macOS 27.0, *)
  var value: TextInputBorderShape {
    switch self {
    case .automatic: .automatic
    case .capsule: .capsule
    case .roundedRectangle: .roundedRectangle
    }
  }
}
