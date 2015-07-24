//
//  ViewController.swift
//  TRexSyntaxKitDemo
//
//  Created by David Ehlen on 24.07.15.
//  Copyright © 2015 David Ehlen. All rights reserved.
//

import Cocoa
import SyntaxKit

class ViewController: NSViewController {
    @IBOutlet var codeTextView: NSTextView!
    var attributedParser:AttributedParser?
    var syntaxHighlighter:TRexSyntaxKitHighlighter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create Parser
        attributedParser = AttributedParser(language: languageWithName("Swift",type:"tmLanguage"), theme: themeWithName("Tomorrow",type:"tmTheme"))
        
        //Add Parser to TextStorage to live color while writing
        self.syntaxHighlighter = TRexSyntaxKitHighlighter(attributedParser: self.attributedParser!, textView: self.codeTextView)
        
        //Set some default string in the textview
        self.codeTextView.string = "class TRexSyntaxKitDemo {\n var test : Int = 1\n}"
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

