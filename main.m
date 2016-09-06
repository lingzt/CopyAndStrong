//
//  main.m
//  CopyAndStrong
//
//  Created by ling toby on 9/6/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject
@property (strong, nonatomic) NSArray *bookArray1;
@property (copy, nonatomic) NSArray *bookArray2;
@end

@implementation Person
//省略setter方法
@end

//Person调用
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *books = [@[@"book1"] mutableCopy];
        Person *person = [[Person alloc] init];
        person.bookArray1 = books;
        person.bookArray2 = books;
        [books addObject:@"book2"];
        NSLog(@"bookArray1:%@",person.bookArray1);
        NSLog(@"bookArray2:%@",person.bookArray2);
    }
    return 0;
}
