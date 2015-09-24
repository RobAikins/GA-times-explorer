//
//  ViewController.m
//  times-explorer
//
//  Created by Robert Aikins on 9/23/15.
//  Copyright © 2015 Rob Aikins. All rights reserved.
//

#import "ViewController.h"
#import "ArtilceModel.h"

@interface ViewController () <UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (strong, nonatomic) NSArray *articles;
@property (strong, nonatomic) NSTimer *articleSearchTimer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDelegates];
    self.articles = @[];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) setupDelegates {
    self.searchTextField.delegate = self;
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    [self restartSearchTimer];
    return YES;
}

- (void) restartSearchTimer {
    [self.articleSearchTimer invalidate];
    self.articleSearchTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(searchForArticles) userInfo:NULL repeats:NO];
}

- (void) searchForArticles {
    [ArtilceModel articlesForSearch:self.searchTextField.text withCompletion:^(NSArray *articles) {
        self.articles = articles;
        [self.myTableView reloadData];
    }];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return NULL;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.articles.count;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
