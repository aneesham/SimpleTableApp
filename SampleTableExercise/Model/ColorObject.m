//
//  ColorObject.m
//  SampleTableExercise
//
//  Created by Aneesha on 11/6/15.
//  Copyright © 2015 Aneesha. All rights reserved.
//

#import "ColorObject.h"

@implementation ColorObject


- (id)initWithName:(NSString *)colorName andBackgroundColor:(UIColor *)color {
    self = [super init];
    if (self) {
        if (colorName) {
            _name = colorName;
            _backgroundColor = color;
        }
    }
    return self;
}


@end
