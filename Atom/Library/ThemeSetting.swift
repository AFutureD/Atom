import Runestone

enum ThemeSetting: String, CaseIterable, Hashable {
    case markdown

    var title: String {
        switch self {
        case .markdown:
            return "Markdown"
        }
    }

    func makeTheme() -> EditorTheme {
        switch self {
        case .markdown:
            return MarkdownTheme()
        }
    }
}
