//
//  MultiplyViewController.h
//  Calculator
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultiplyViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tf1;

@property (weak, nonatomic) IBOutlet UITextField *tf2;

- (IBAction)resultbtn:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *mulltf;
@property int temp;

@end
