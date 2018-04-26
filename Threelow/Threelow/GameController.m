//
//  GameController.m
//  Threelow
//
//  Created by Jorge Serna on 2018-04-24.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype) init {
    self = [super init];
    if(self) {
        self.heldDices = [NSMutableArray new];
    }
    
    return self;
}

- (void)holdDice:(Dice *)newDice {
    [self.heldDices addObject:newDice];
}

- (void)printHoldDices {
    NSLog(@"Hold Dices: %@", _heldDices);
}

@end
