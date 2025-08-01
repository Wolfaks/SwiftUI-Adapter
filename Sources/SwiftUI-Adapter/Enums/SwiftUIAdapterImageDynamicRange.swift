//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterImageDynamicRange {
  case constrainedHigh
  case high
  case standard
  
  @available(iOS 17.0, macOS 14.0, *)
  var value: Image.DynamicRange {
    switch self {
    case .constrainedHigh: .constrainedHigh
    case .high: .high
    case .standard: .standard
    }
  }
}
