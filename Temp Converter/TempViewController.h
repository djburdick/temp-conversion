//
//  TempViewController.h
//  Temp Converter
//
//  Created by DJ Burdick on 10/6/13.
//  Copyright (c) 2013 DJ Burdick. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kDefaultFahrenheit 80.0

@interface TempViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *celsius;
@property (nonatomic, strong) IBOutlet UITextField *fahrenheit;

@end
