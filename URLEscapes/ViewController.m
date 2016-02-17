//
//  ViewController.m
//  URLEscapes
//
//  Created by TonyChan on 16/2/16.
//  Copyright © 2016年 BlocksStudio. All rights reserved.
//

#import "ViewController.h"

#import "NSString+URLEscapes.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Action

- (IBAction)go:(id)sender
{
    static NSInteger i = 0;
    if (i%2 == 0) {
        // url encode
        NSString *query = [self.textView.text escapedURLString];
        self.textView.text = query;
    } else{
        // ASCII in url -> url decode
        NSString *query = [self.textView.text originalURLString];
        self.textView.text = query;
    }
    i++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
