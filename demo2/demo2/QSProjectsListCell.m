//
//  QSProjectsListCell.m
//  demo2
//
//  Created by Nguyen Van Diem on 5/22/14.
//  Copyright (c) 2014 Nguyen Van Diem. All rights reserved.
//

#import "QSProjectsListCell.h"
#import "QSProjectModel.h"

@implementation QSProjectsListCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(QSProjectModel *)model
{
    _model = model;
    [self.nameLabel setText:_model.name];
    [self.startDateLabel setText:_model.startDate];
    [self.endDateLabel setText:_model.endDate];
    [self.statusLabel setText:_model.status];
    
}

@end
