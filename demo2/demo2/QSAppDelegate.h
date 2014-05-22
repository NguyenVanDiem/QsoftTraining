//
//  QSAppDelegate.h
//  demo2
//
//  Created by Nguyen Van Diem on 5/22/14.
//  Copyright (c) 2014 Nguyen Van Diem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
