//
//  Assignment.h
//  Grades
//
//  Created by Oscar Calles on 11/29/13.
//  Copyright (c) 2013 ocalles@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Assignment : NSObject
{
@private
    NSString *name;
    int grade;

}
@property (copy) NSString *name;
@property int grade;

@end
