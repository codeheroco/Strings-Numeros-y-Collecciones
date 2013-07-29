//
//  main.m
//  Clases de Apple
//
//  Created by Oscar Vicente González Greco on 28/7/13.
//  Copyright (c) 2013 Codehero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Probando NSStrings
        
        NSString *test1 = @"Hola mundo";
        NSString *test2 = [[NSString alloc] initWithString:test1];
        
        int anInteger = 48;
        
        NSString *test3 = [NSString stringWithFormat:@"El numero es: %i", anInteger];
        
        
        // Probando NSMutableString
        
        NSMutableString *test4 = [NSMutableString stringWithFormat:@"Hola "];
        [test4 appendString:@"mundo"];
        
        NSLog(@"test4 contiene: %@", test4);
        
        
        // Probando NSArray
        
        NSArray *testArray = @[test1, test2, test3, test4];
        NSArray *testArray2 = [[NSArray alloc] initWithObjects:test1, test2, test3, test4, nil];
        
        NSString *string = [testArray objectAtIndex:2];
        
        
        // Probando NSMutableArray
        
        // 1
        NSMutableArray *testMutableArray = [[NSMutableArray alloc] initWithArray:testArray];
        NSLog(@"testMutableArray: %@", testMutableArray);
        
        // 2
        [testMutableArray addObject:testArray2];
        NSLog(@"testMutableArray: %@", testMutableArray);
        
        // 3
        [testMutableArray removeObjectAtIndex:2];
        NSLog(@"testMutableArray: %@", testMutableArray);
        
        // 4
        [testMutableArray removeLastObject];
        NSLog(@"testMutableArray: %@", testMutableArray);
        
        // 5
        [testMutableArray removeAllObjects];
        NSLog(@"testMutableArray: %@", testMutableArray);
        
        
        // Probando NSMutableArray
        
        NSDictionary *testDiccionary = @{@"valor 1": test1,
                                         @"valor 2": test2,
                                         @"valor 3": test3,
                                         @"valor 4": test4
                                         };
        
        NSString *string2 = [testDiccionary objectForKey:@"valor 2"];
        
        
        // Probando NSMutableDiccionary
        
        // 1
        NSMutableDictionary *testMutableDiccionary = [[NSMutableDictionary alloc] initWithDictionary:testDiccionary];
        NSLog(@"testMutableDiccionary: %@", testMutableDiccionary);
        
        // 2
        [testMutableDiccionary setValue:testArray forKey:@"valor 5"];
        NSLog(@"testMutableDiccionary: %@", testMutableDiccionary);
        
        // 3
        [testMutableDiccionary removeObjectForKey:@"valor 2"];
        NSLog(@"testMutableDiccionary: %@", testMutableDiccionary);
        
        // 4
        [testMutableDiccionary removeObjectsForKeys:@[@"valor 4", @"valor 1"]];
        NSLog(@"testMutableDiccionary: %@", testMutableDiccionary);
        
        // 5
        [testMutableDiccionary removeAllObjects];
        NSLog(@"testMutableDiccionary: %@", testMutableDiccionary);
        
        
        // Probando NSNumber
        
        NSNumber *aNumber = [NSNumber numberWithInt:5];
        NSNumber *aNumber2 = [NSNumber numberWithBool:YES];
        NSNumber *aNumber3 = [NSNumber numberWithFloat:4.5f];
        
        NSArray *numbers = @[aNumber, aNumber2, aNumber3];
        
        NSLog(@"aNumber: %i", [[numbers objectAtIndex:0] intValue]);
        NSLog(@"aNumber2: %i", [[numbers objectAtIndex:1] boolValue]);
        NSLog(@"aNumber3: %.1f", [[numbers objectAtIndex:2] floatValue]);
        
    }
    
    return 0;
}

