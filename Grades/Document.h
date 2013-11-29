//
//  Document.h
//  Grades
//
//  Created by Oscar Calles on 11/29/13.
//  Copyright (c) 2013 ocalles@gmail.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument
{
@private
    NSMutableArray *assignments;
}
@property (copy) NSMutableArray *assignments;

@end
