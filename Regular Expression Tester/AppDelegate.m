//
//  AppDelegate.m
//  Regular Expression Tester
//
//  Created by Josh on 1/4/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
}

-(IBAction)testIt:(id)sender
{
    [self resetResults];
    
    NSError *error = nil;
    
    NSString *regularExpression = [[self regularExpressionField] stringValue];
    NSString *testString = [[self testTextTextView] string];
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regularExpression options:0 error:&error];
    
    NSArray *matches = [regex matchesInString:testString options:0 range:NSMakeRange(0, [testString length])];
    
    for (NSTextCheckingResult *match in matches) {        
        NSMutableAttributedString *highlightedString = [[self resultTextView] textStorage];
        
        [highlightedString addAttribute:NSBackgroundColorAttributeName value:[NSColor yellowColor] range:[match range]];
    }
}

-(void)resetResults
{
    [[self resultTextView] setString:@""];
    [[self resultTextView] setString:[[self testTextTextView] string]];
}

@end
