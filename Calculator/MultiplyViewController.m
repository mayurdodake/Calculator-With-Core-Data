//
//  MultiplyViewController.m
//  Calculator
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//

#import "MultiplyViewController.h"
#import "SaveData.h"
#import "AppDelegate.h"



@interface MultiplyViewController ()

@end

@implementation MultiplyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)resultbtn:(id)sender {
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    
    AppDelegate *mydelegate=(AppDelegate *)myapplication.delegate;
    
    NSManagedObjectContext *context=mydelegate.managedObjectContext;
    
    SaveData *s1=[NSEntityDescription insertNewObjectForEntityForName:@"SaveData" inManagedObjectContext:context];
    s1.opr1=[NSNumber numberWithInteger:[_tf1.text intValue]];
    s1.opr2=[NSNumber numberWithInteger:[_tf2.text intValue]];
    
    s1.operator=@"MULTIPLY";
    _temp=[_tf1.text intValue]*[_tf2.text intValue];
    
    s1.result=[NSNumber numberWithInteger:_temp];
    
    _mulltf.text=[NSString stringWithFormat:@"%i",_temp];
    
    [context save:nil];
    
    
    _tf1.text=@"";
    _tf2.text=@"";
    
}
@end
