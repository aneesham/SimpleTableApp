//
//  ColorObject.h
//  SampleTableExercise
//
//  Created by Aneesha on 11/6/15.
//  Copyright © 2015 Aneesha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ColorObject : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIColor *backgroundColor;


- (id)initWithName:(NSString *)colorName andBackgroundColor:(UIColor *)color;
@end
