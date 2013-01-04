//
//  AppDelegate.h
//  Regular Expression Tester
//
//  Created by Josh on 1/4/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *testButton;
@property (weak) IBOutlet NSTextField *regularExpressionField;
@property (unsafe_unretained) IBOutlet NSTextView *resultTextView;
@property (unsafe_unretained) IBOutlet NSTextView *testTextTextView;

-(IBAction)testIt:(id)sender;

-(void)resetResults;

@end
