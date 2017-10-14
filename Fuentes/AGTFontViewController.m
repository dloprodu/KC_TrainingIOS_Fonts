//
//  AGTFontViewController.m
//  Fuentes
//
//  Created by Fernando Rodríguez Romero on 7/30/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTFontViewController.h"

@interface AGTFontViewController ()

@end

@implementation AGTFontViewController

-(id) initWithFont:(UIFont *)aFont{
    
    if (self =[super initWithNibName:nil
                              bundle:nil]) {
        _font = aFont;
    }
    
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.fontView.font = self.font;
    self.fontName.text = self.font.fontName;
    self.fontName.font = [self.font fontWithSize:30.0];
    self.fontName.adjustsFontSizeToFitWidth = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
