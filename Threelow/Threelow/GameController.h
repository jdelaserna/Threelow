//
//  GameController.h
//  Threelow
//
//  Created by Jorge Serna on 2018-04-24.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray *heldDices;

- (instancetype) init;
- (void)holdDice:(Dice *)newDice;
- (void)printHoldDices;
@end
