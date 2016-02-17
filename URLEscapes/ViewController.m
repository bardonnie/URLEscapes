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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // url encode
    NSString *urlString = @"http://www.wecook.cn?link=http://wecook.cn//egret//index.html?platInfo=open_86_18269&wy_game=170&wy_user=389&wy_bs=abc&isiframe=0&isapp=true&game=味库";
    NSString *query = [urlString escapedURLString];
    NSLog(@"query - %@", query);
    
    // ASCII in url -> url decode
    NSString *query1 = [query originalURLString];
    NSLog(@"query1 - %@", query1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
