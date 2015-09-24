//
//  ViewController.m
//  times-explorer
//
//  Created by Robert Aikins on 9/23/15.
//  Copyright © 2015 Rob Aikins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDelegates];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) setupDelegates {
    self.searchTextField.delegate = self;
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return YES;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return NULL;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
