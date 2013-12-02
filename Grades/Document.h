//
//  Document.h
//  Grades
//
//  Created by Oscar Calles on 11/29/13.
//  Copyright (c) 2013 ocalles@gmail.com. All rights reserved.
// Cocoa Programming L23, L24, L25 - Drag and Drop

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument
{
@private
    NSMutableArray *assignments;
}
@property (copy) NSMutableArray *assignments;

@end
