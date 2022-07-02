import Foundation

enum CodeSample {
    static var `default`: String {
        return """
        # Head 1
        ## Head 2
        `code` *heihei* **bobo**
        1. list
        2. list 2
        
        - todo 1
        - todo 2
        
        ``` swift
            let obj = Object()
        ```
        """
    }
}
