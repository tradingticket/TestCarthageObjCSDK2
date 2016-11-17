//
//  ViewController.m
//  TestCarthageObjCSDK2
//
//  Created by James Robert Somers on 11/17/16.
//  Copyright © 2016 TradeIt. All rights reserved.
//

#import "ViewController.h"
#import <TradeItIosTicketSDK2Carthage/TradeItIosTicketSDK2Carthage-Swift.h>
#import <TradeItIosTicketSDK2Carthage/TradeItTypeDefs.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[TradeItLauncher alloc] initWithApiKey:@"test" environment:nil];
    TradeItMarketService *marketService = [TradeItLauncher marketDataService];
    [marketService symbolLookup:@"TSLA" onSuccess:^(NSArray<TradeItSymbolLookupCompany *> * _Nonnull result) {
        NSLog(@"DONE");
    } onFailure:^(TradeItErrorResult * _Nonnull result) {
        NSLog(@"FAILED");
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
