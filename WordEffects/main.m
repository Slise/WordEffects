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
        char functionChars[255];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        // print NSString object
        
         printf("Input a function between 1 and 6: ");
         fgets(functionChars, 255, stdin);
        // convert char array to an NSString object
        
        NSString *functionString = [NSString stringWithUTF8String:functionChars];
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was: %@", inputString);
        
        switch(functionString.intValue)
        {
            
            case 1 :
                inputString = [inputString uppercaseString];
                NSLog(@"%@\n", inputString);
                break;
            case 2 :
                inputString = [inputString lowercaseString];
                NSLog(@"%@\n", inputString);
                break;
            case 3 :{
                int numberize = [inputString intValue];
                NSLog(@"%d\n", numberize);
                break;}
            case 4 :
                NSLog(@"%@eh?\n", inputString);
                break;
            case 5 :
                if ([inputString containsString:@"?'"]) {
                    NSLog(@"I dont' know.");
                }
                else if ([inputString containsString:@"!"]){
                    NSLog(@"Whoa, calm down!");
                }
                break;
            case 6 :
                inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@\n", inputString);
                break;
            default :
                NSLog(@"Invalid input\n");
        }
    
         }
        return 0;
    }






























