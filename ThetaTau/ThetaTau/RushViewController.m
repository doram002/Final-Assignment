//
//  RushViewController.m
//  ThetaTau
//
//  Created by David Oramas on 3/25/14.
//  Copyright (c) 2014 David Oramas. All rights reserved.
//

#import "RushViewController.h"
#import "RushLocationsViewController.h"

@interface RushViewController ()

@end

@implementation RushViewController
@synthesize rushVideoView ;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Rush", @"Rush");
         
    }
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSURL *myURL = [NSURL URLWithString: @"http://www.thetataufiu.com/#!rush.html"];
    
    NSURLRequest *myRequest = [NSURLRequest requestWithURL: myURL];

    [self.rushVideoView loadRequest: myRequest];
    
  //  [self.rushEvents setImage:[UIImage imageNamed:@"rush.jpg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)events:(id)sender {
   
    UIViewController *RLVC = [[RushLocationsViewController alloc]init];
    
    [RLVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    
    [self presentViewController:RLVC animated:YES completion:nil];
    
    
}
@end
