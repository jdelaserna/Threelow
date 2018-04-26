//
//  Dice.m
//  Threelow
//
//  Created by Jorge Serna on 2018-04-23.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype) initWithDice:(int)currentValue {
    self = [super init];
    if(self) {
        self.currentValue = currentValue;
    }
    
    return self;
}
- (int)randomNumber {
    NSNumber *randomNumber = [NSNumber numberWithInt:arc4random_uniform(6) + 1];
    return randomNumber.intValue;
}


@end
