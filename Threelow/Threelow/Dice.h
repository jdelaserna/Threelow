//
//  Dice.h
//  Threelow
//
//  Created by Jorge Serna on 2018-04-23.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int currentValue;

- (instancetype) initWithDice:(int)currentValue;
- (int) randomNumber;

@end
