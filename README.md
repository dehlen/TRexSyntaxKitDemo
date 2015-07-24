# TRexSyntaxKitDemo

T-Rex is a beautifully designed Mac application to write and compile LaTeX documents.
As an addition it is the first Swift-only LaTeX editor.
The application also features a command-line-interface which is written in Ruby.

You can find both of them here: [T-Rex Repositories](https://github.com/T-Rex-Editor).

### SyntaxKit
[SyntaxKit](https://github.com/soffes/SyntaxKit) is a Swift-Only library which provides an SyntaxParser for your application. The parser supports Textmate's tmLanguage and tmTheme files which I think is super cool. Therefore this library is heavily used in T-Rex Editor.

### Purpose
Since there is no real demo application which shows the use of SyntaxKit in a NSTextView to achieve Live-Syntax-Coloring I thought I would Open-Source my implementation and share it with you. The demo application features basically two own developed files. One which is a simple helper to read the tmLanguage and tmTheme files into a Dictionary. The second one is a class which implements the NSTextStorageDelegate and is responsible to call the parser and add the syntax coloring to the textview whenever a change happens.

### Version
1.0

### Screenshots
Before you download/install the application you can get a little sneak peek by looking at this screenshots:

![alt tag](https://raw.githubusercontent.com/T-Rex-Editor/TRexSyntaxKitDemo/master/screenshot.png)

### Installation

If you want to build this application from source you can do that via *Cocoapods*.
If you don't have Cocoapods already installed do so by running
```sh
sudo gem install cocoapods
```

Afterwards you are able to install all used dependencies via :
```sh
pod install
```

Then open the *.xcworkspace* via 
```sh
open T-Rex.xcworkspace
```
or just open it by double-clicking the file. Please note that you need minimum Xcode 7 because the whole application is written in Swift 2.0.

### Development

Want to contribute? Great!
You might want to check out the open issues or fork this repository to create a pull request. I'd love to see something like that.

### Todo's
- Improve SyntaxKit Coloring Support
- Fix a Bug in SyntaxKit where the application crashes due to NSRange conflicts


### License
----

The MIT License (MIT)

Copyright (c) 2015 David Ehlen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

**Free Software, Hell Yeah!**
