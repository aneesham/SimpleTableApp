//
//  ViewController.m
//  SampleTableExercise
//
//  Created by Aneesha on 11/6/15.
//  Copyright © 2015 Aneesha. All rights reserved.
//

#import "ViewController.h"
#import "ColorObject.h"


NSString *const kColorNameCell = @"ColorNameCell";
@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *colorArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.rowHeight = 100.0;
    
}


- (NSArray *)colorArray {
    if (!_colorArray) {
        ColorObject *redObject = [[ColorObject alloc]initWithName:@"Gray" andBackgroundColor:[UIColor darkGrayColor]];
        ColorObject *blueObject = [[ColorObject alloc]initWithName:@"purple" andBackgroundColor:[UIColor purpleColor]];
        ColorObject *greenObject = [[ColorObject alloc]initWithName:@"Orange" andBackgroundColor:[UIColor orangeColor]];

        _colorArray = @[redObject, blueObject, greenObject];
    }
    return _colorArray;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.colorArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kColorNameCell forIndexPath:indexPath];
    
    ColorObject *obj = [self.colorArray objectAtIndex:indexPath.row];
    if (obj) {
        //Typically this logic would go into a tableViewCell's view class
        NSString *capitalizedText = [obj.name uppercaseString];
        cell.textLabel.text = capitalizedText;
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
        cell.textLabel.font = [UIFont systemFontOfSize:22.0];
        cell.textLabel.textColor = [UIColor whiteColor];
        
        cell.backgroundColor = obj.backgroundColor;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 1.0;
}

@end
