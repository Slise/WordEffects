//
//  main.m
//  WordEffects
//
//  Created by Benson Huynh on 2015-10-19.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        
        NSlog(@"Input a string:", inputChars);
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        NSLog(@"Your string is %s\n", inputChars);
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
    }
    return 0;
}
