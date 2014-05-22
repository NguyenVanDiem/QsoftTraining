//
//  QSProjectsListViewController.m
//  demo2
//
//  Created by Nguyen Van Diem on 5/22/14.
//  Copyright (c) 2014 Nguyen Van Diem. All rights reserved.
//

#import "QSProjectsListViewController.h"
#import "QSProjectsListCell.h"
#import "QSProjectModel.h"
#import "QSProjectsListService.h"

@interface QSProjectsListViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

- (void)fakeModel;

@property (nonatomic, strong) NSArray * projects;

@end

@implementation QSProjectsListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.tableView registerNib:[UINib nibWithNibName:@"QSProjectsListCell" bundle:nil]forCellReuseIdentifier:@"QSProjectsListCell"];
    [self fakeModel];
}

#pragma mark - table view datasource and delegate

- (void)fakeModel
{
    NSMutableArray *array = [NSMutableArray array];
    NSString *startDate = @"22/05/2014";
    NSString *endDate = @"31/05/2014";
    NSString *status = @"COMPLETED";
    for (NSInteger index = 1; index < 20; index ++){
        QSProjectModel *model = [[QSProjectModel alloc] init];
        model.name = [NSString stringWithFormat:@"Sprint %li", (long)index];
        model.startDate = startDate;
        model.endDate = endDate;
        model.status = status;
        [array addObject:model];
    }
    self.projects = [array copy];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.projects.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 125.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QSProjectsListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSProjectsListCell"];
    QSProjectModel *model = [self.projects objectAtIndex:indexPath.row];
    [cell setModel:model];
    return cell;
}


@end
