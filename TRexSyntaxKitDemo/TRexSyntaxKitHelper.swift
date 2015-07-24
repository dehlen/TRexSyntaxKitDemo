//
//  TRexSyntaxKitHelper.swift
//  TRexSyntaxKitDemo
//
//  Created by David Ehlen on 24.07.15.
//  Copyright © 2015 David Ehlen. All rights reserved.
//

import Foundation
import SyntaxKit

func languageWithName(name:String, type:String) -> Language! {
    let path = NSBundle.mainBundle().pathForResource(name, ofType: type)!
    let plist = NSDictionary(contentsOfFile: path)! as [NSObject: AnyObject]
    return Language(dictionary: plist)!
}

func themeWithName(name:String, type:String) -> Theme! {
    let path = NSBundle.mainBundle().pathForResource(name, ofType: type)!
    let plist = NSDictionary(contentsOfFile: path)! as [NSObject: AnyObject]
    return Theme(dictionary: plist)!
}