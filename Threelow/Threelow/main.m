//
//  main.m
//  Threelow
//
//  Created by Jorge Serna on 2018-04-23.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        NSMutableArray *dices = [NSMutableArray array];
        GameController *held = [[GameController alloc] init];
        
        int x = 0;
        
        NSString *question = [InputCollector inputForPrompt:@"Let's start the game. Enter roll to start: "];
        
        while (x == 0) {
            if ([question  isEqualToString: @"roll"]){
                int firstDice = [dice1 randomNumber];
                int secondDice = [dice2 randomNumber];
                int thridDice = [dice3 randomNumber];
                int fourthDice = [dice4 randomNumber];
                int fifthDice = [dice5 randomNumber];
            
                [dices addObject:[NSNumber numberWithInt:firstDice]];
                [dices addObject:[NSNumber numberWithInt:secondDice]];
                [dices addObject:[NSNumber numberWithInt:thridDice]];
                [dices addObject:[NSNumber numberWithInt:fourthDice]];
                [dices addObject:[NSNumber numberWithInt:fifthDice]];
                
                NSLog(@"\n##### Dice0: %@ #####\n##### Dice1: %@ #####\n##### Dice2: %@ #####\n##### Dice3: %@ #####\n##### Dice4: %@ #####\n", dices[0], dices[1], dices[2], dices[3], dices[4]);
            
                NSString *answer = [InputCollector inputForPrompt:@"Enter the dices that you want to hold: "];
                
                NSArray *heldDices = [answer componentsSeparatedByString:@" "];
                
                NSLog(@"HOLD DICES: %@", heldDices);
                
                for (int z = 0; z < answer.length - 1; z++){
                    [held holdDice:dices[z]];
                }
                
                [held printHoldDices];
                
                [dices removeAllObjects];
            }
        }

    }
    return 0;
}
