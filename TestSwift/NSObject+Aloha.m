//
//  NSObject+Aloha.m
//  TestSwift
//
//  Created by Lantean on 11/9/21.
//

#import "NSObject+Aloha.h"
#import "SampleIntent.h"

@implementation NSObject (Aloha)

- (void)doSomething
{
    // And yeah, the intent is also accessible in ObjC
    [SampleIntent new];
}

@end
