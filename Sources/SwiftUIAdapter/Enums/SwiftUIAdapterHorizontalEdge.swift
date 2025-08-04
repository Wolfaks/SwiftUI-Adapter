//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterHorizontalEdge {
  case leading
  case trailing
  
  @available(iOS 15.0, macOS 12.0, *)
  var value: HorizontalEdge {
    switch self {
    case .leading: .leading
    case .trailing: .trailing
    }
  }
}
