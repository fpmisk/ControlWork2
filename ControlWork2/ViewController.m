//
//  ViewController.m
//  ControlWork2
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *tableData;
@synthesize currentNum = _currentNum;

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData= [NSArray arrayWithObjects: @"Я проверялась, вы больны не мною", @"Мне буквально сносит крышу от езды на кабриолете.",@"Есть два типа женщин: те, кто пекут торты и те, кто выпрыгивает из тортов",@"Ну вот и всё Что, сделал? Нет, сломал!",@"Я бы с удовольствием, но не хочу",@"joke1", @"joke2", @"joke3", @"joke4", @"joke5", nil];
    [self setCurrentNum:0];
    
    [[self FunTextField] setText: [tableData objectAtIndex: [self currentNum ]]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)prevbutton:(id)sender {
    if([self currentNum] > 1){
        [[self FunTextField] setText: [tableData objectAtIndex: ([self currentNum ]- 1)]];
        [self setCurrentNum:([self currentNum] - 1)];
    }
    
    
}
- (IBAction)nextButton:(id)sender {
    
    if([self currentNum] < 9){
        [[self FunTextField] setText: [tableData objectAtIndex: ([self currentNum] + 1)]];
        [self setCurrentNum:([self currentNum] + 1)];
    }
}

@end
