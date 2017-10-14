//
//  AGTFontViewController.h
//  Fuentes
//
//  Created by Fernando Rodríguez Romero on 7/30/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AGTFontViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *fontView;
@property (strong, nonatomic) UIFont *font;
@property (weak, nonatomic) IBOutlet UILabel *fontName;

-(id) initWithFont: (UIFont *)aFont;

@end
