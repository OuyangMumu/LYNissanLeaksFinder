//
//  ViewController.m
//  OCTest
//
//  Created by ouyanggaojun on 2022/10/29.
//

#import "LYViewController.h"

@interface LYViewController ()

@property(nonatomic, copy) void (^callBlock)(void);

@end

@implementation LYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.callBlock = ^{
        [self dosthong];
    };
}

- (void)dosthong {
    NSLog(@"=================");
}


- (void)dealloc {
    NSLog(@"dealloc ================= ");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[LYViewController new] animated:YES];
}

@end
