//
//  Assignment.m
//  Grades
//
//  Created by Oscar Calles on 11/29/13.
//  Copyright (c) 2013 ocalles@gmail.com. All rights reserved.
//

#import "Assignment.h"

@implementation Assignment

@synthesize name;
@synthesize grade;

-(id)init
{
    self = [super init];
    if(self){
        name =
        [[NSString alloc] initWithString:@"Cocoa Tutorial"];
        grade = 100;
    }
    return self;
}
-(void)dealloc
{
    [name release];
    [super dealloc];
    
    
}
@end
