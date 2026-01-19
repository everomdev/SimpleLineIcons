// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct SimpleLineIconSView: View {
  private let icon: SimpleLineIcon
  private let size: CGFloat
  private let fontName: String

  public init(_ icon: SimpleLineIcon, size: CGFloat = 20, fontName: String = "Simple-Line-Icons") {
    self.icon = icon
    self.size = size
    self.fontName = fontName
  }
    
    public init(_ icon: String, size: CGFloat = 20, fontName: String = "Simple-Line-Icons") {
      guard let iconEnum = SimpleLineIcon(name: icon) else {
        fatalError("No matching case for \(icon)")
      }
      self.icon = iconEnum
      self.size = size
      self.fontName = fontName
    }

  public var body: some View {
      Text(icon.unicodeScalar)
          .font(.custom(fontName, size: size))
  }
    
    
}
