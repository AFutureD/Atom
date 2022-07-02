//
//  MarkDownTheme.swift
//  Example
//
//  Created by 尼诺 on 2022/7/2.
//

import Foundation
import Runestone
import UIKit

public enum MarkdownTokenName: String {
    case title = "text.title"
    case none = "none"
    case literal = "text.literal"
    case emphasis = "text.emphasis"
    case strong = "text.strong"
    case uri = "text.uri"
    case reference = "text.reference"
    case special = "punctuation.special"
    case escape = "string.escape"
}

public final class MarkdownTheme: EditorTheme {
    public let backgroundColor: UIColor = .white
    public let userInterfaceStyle: UIUserInterfaceStyle = .light
    
    public let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    public let textColor: UIColor = .black
    
    public let gutterBackgroundColor: UIColor = .white
    public let gutterHairlineColor: UIColor = .white
    
    public let lineNumberColor: UIColor = .black.withAlphaComponent(0.5)
    public let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    
    public let selectedLineBackgroundColor: UIColor = .black.withAlphaComponent(0.07)
    public let selectedLinesLineNumberColor: UIColor = .black
    public let selectedLinesGutterBackgroundColor: UIColor = .black.withAlphaComponent(0.07)
    
    public let invisibleCharactersColor: UIColor = .black.withAlphaComponent(0.5)
    
    public let pageGuideHairlineColor: UIColor = .black.withAlphaComponent(0.1)
    public let pageGuideBackgroundColor: UIColor = .black.withAlphaComponent(0.06)
    
    public let markedTextBackgroundColor: UIColor = .black.withAlphaComponent(0.1)
    public let markedTextBackgroundCornerRadius: CGFloat = 4
    
    public init() {}
    
    public func textColor(for rawHighlightName: String) -> UIColor? {
        guard let highlightName = MarkdownTokenName(rawValue: rawHighlightName) else {
            return nil
        }
        
        switch highlightName {
        case .title:
            return UIColor.black
        case .none:
            return nil
        case .literal:
            return UIColor.red
        case .emphasis:
            return UIColor.blue
        case .strong:
            return UIColor.green
        case .uri:
            return UIColor.red
        case .reference:
            return UIColor.brown
        case .special:
            return UIColor.cyan
        case .escape:
            return UIColor.gray
        }
    }
    
    public func fontTraits(for rawHighlightName: String) -> FontTraits {
        guard let highlightName = MarkdownTokenName(rawValue: rawHighlightName) else {
            return []
        }
        
        switch highlightName {
        case .title:
            return [.bold]
        case .none:
            return []
        case .literal:
            return []
        case .emphasis:
            return []
        case .strong:
            return []
        case .uri:
            return []
        case .reference:
            return []
        case .special:
            return []
        case .escape:
            return []
        }
        return []
    }
}
