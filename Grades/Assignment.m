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

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self){
        name = [[aDecoder decodeObjectForKey:@"name"]retain];
        grade = [aDecoder decodeIntForKey:@"grade"];
    
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:name forKey:@"name"];
    [aCoder encodeInt:grade forKey:@"grade"];


}



@end
