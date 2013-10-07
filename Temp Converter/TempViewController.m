//
//  TempViewController.m
//  Temp Converter
//
//  Created by DJ Burdick on 10/6/13.
//  Copyright (c) 2013 DJ Burdick. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()

- (void) updateFahrenheit;
- (void) updateCelsius;
- (void) setDefaults;
- (void) resetValues;
@end

@implementation TempViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setDefaults];

    [self.celsius addTarget:self action:@selector(resetValues) forControlEvents:UIControlEventTouchDown];
    [self.fahrenheit addTarget:self action:@selector(resetValues) forControlEvents:UIControlEventTouchDown];
    
    [self.celsius addTarget:self action:@selector(updateFahrenheit) forControlEvents:UIControlEventEditingChanged];    
    [self.fahrenheit addTarget:self action:@selector(updateCelsius) forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateFahrenheit {
    float celsius = [self.celsius.text floatValue];
    float fahrenheit = celsius * 1.8 + 32;
    
    self.fahrenheit.text = [NSString stringWithFormat:@"%0.1f", fahrenheit];
}

- (void) updateCelsius {
    float fahrenheit = [self.fahrenheit.text floatValue];
    float celsius = (fahrenheit - 32) / 1.8;
    
    self.celsius.text = [NSString stringWithFormat:@"%0.1f", celsius];
    
}

- (void) setDefaults {
    self.fahrenheit.text = [NSString stringWithFormat:@"%0.1f", kDefaultFahrenheit];
    [self updateCelsius];
}

- (void) resetValues {
    self.fahrenheit.text = @"";
    self.celsius.text = @"";
}


@end
