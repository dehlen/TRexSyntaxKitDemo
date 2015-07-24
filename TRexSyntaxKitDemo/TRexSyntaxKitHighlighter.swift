//
//  TRexSyntaxKitHighlighter.swift
//  TRexSyntaxKitDemo
//
//  Created by David Ehlen on 24.07.15.
//  Copyright © 2015 David Ehlen. All rights reserved.
//

import Cocoa
import SyntaxKit

class TRexSyntaxKitHighlighter: NSObject, NSTextStorageDelegate {
    
    var attributedParser:AttributedParser?
    var textStorage : NSTextStorage!
    init(attributedParser:AttributedParser, textView:NSTextView) {
        self.attributedParser = attributedParser
        
        super.init()
        
        if let textViewStorage = textView.textStorage {
            self.textStorage = textViewStorage
            self.textStorage.delegate = self
        }
    }
    
    override func textStorageDidProcessEditing(notification: NSNotification) {
        let inputString = self.textStorage.string
        let wholeRange = NSMakeRange(0, inputString.characters.count)
        
        self.textStorage.removeAttribute(NSForegroundColorAttributeName, range:wholeRange)
        self.attributedParser!.parse(self.textStorage.string) { scope, range, attributes in
            if attributes != nil {
                self.textStorage.addAttributes(attributes!, range: range)
            }
        }
    }
}
