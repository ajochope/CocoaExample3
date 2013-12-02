//
//  DropView.h
//  CocoaExamples3
//
//  Created by Oscar Calles on 11/30/13.
//  Copyright (c) 2013 ocalles@gmail.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DropView : NSView <NSDraggingDestination>
{
    NSImage *image;

}
@property (retain) NSImage *image;
@end
