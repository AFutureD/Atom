import Runestone
import TreeSitterMarkdown
import MarkdownQueries

public extension TreeSitterLanguage {
    static var markdown: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: MarkdownQueries.Query.highlightsFileURL)
        let injectionsQuery = TreeSitterLanguage.Query(contentsOf: MarkdownQueries.Query.injectionsFileURL)
        return TreeSitterLanguage(tree_sitter_markdown(), highlightsQuery: highlightsQuery, injectionsQuery: injectionsQuery)
    }
}
