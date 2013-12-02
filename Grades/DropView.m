//
//  DropView.m
//  CocoaExamples3
//
//  Created by Oscar Calles on 11/30/13.
//  Copyright (c) 2013 ocalles@gmail.com. All rights reserved.
//

#import "DropView.h"

@implementation DropView
@synthesize image;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self registerForDraggedTypes:[NSArray arrayWithObjects:NSURLPboardType, nil]];
    }
    return self;
}

-(void)dealloc
{
    [image release];
    [super dealloc];
}

-(NSDragOperation)draggingEntered:(id<NSDraggingInfo>)sender
{
    if([NSImage canInitWithPasteboard:[sender draggingPasteboard]] && [sender draggingSourceOperationMask] & NSDragOperationCopy){
        NSLog(@"ENTERED");
        return NSDragOperationCopy;
    
    }
    return NSDragOperationNone;
    
}

-(NSDragOperation)draggingUpdated:(id<NSDraggingInfo>)sender
{
    NSLog(@"DRAGGING");
    return NSDragOperationCopy;
}

-(void)draggingEnded:(id<NSDraggingInfo>)sender
{
    NSLog(@"ENDED");
}

-(void)draggingExited:(id<NSDraggingInfo>)sender
{
    NSLog(@"EXITED");
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	if(!image){
        [[NSColor redColor] set];
        NSRectFill(dirtyRect);
        [[NSColor blueColor] set];
        [[NSBezierPath bezierPathWithRect:NSMakeRect(startPoint.x, startPoint.y, endPoint.x - startPoint.x, endPoint.y - startPoint.y)] fill];
        
    } else {
        [image drawInRect:dirtyRect fromRect:NSZeroRect operation:NSCompositeSourceOver fraction:1];
        [[NSColor blueColor] set];
        [[NSBezierPath bezierPathWithRect:NSMakeRect(startPoint.x, startPoint.y, endPoint.x - startPoint.x, endPoint.y - startPoint.y)] fill];
    }
}

-(void)mouseDown:(NSEvent *)theEvent
{
    NSPoint point = [theEvent locationInWindow];
    startPoint = [self convertPoint:point fromView:nil];

}

-(void)mouseDragged:(NSEvent *)theEvent
{
    NSPoint point = [theEvent locationInWindow];
    endPoint = [self convertPoint:point fromView:nil];
    [self setNeedsDisplay:YES];
    
}


-(BOOL)prepareForDragOperation:(id<NSDraggingInfo>)sender
{
    return YES;
}

-(BOOL)performDragOperation:(id<NSDraggingInfo>)sender
{
    if([NSImage canInitWithPasteboard:[sender draggingPasteboard]]){
        NSImage *newImage = [[NSImage alloc] initWithPasteboard:[sender draggingPasteboard]];
        [self setImage:newImage];
        [newImage release];
    }
    return YES;
}

-(void) concludeDragOperation:(id<NSDraggingInfo>)sender
{
    [self setNeedsDisplay:YES];

}


@end
