//
//  QSProjectsListCell.h
//  demo2
//
//  Created by Nguyen Van Diem on 5/22/14.
//  Copyright (c) 2014 Nguyen Van Diem. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QSProjectModel;

@interface QSProjectsListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *startDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *endDateLabel;

@property (nonatomic, strong) QSProjectModel * model;

@end
