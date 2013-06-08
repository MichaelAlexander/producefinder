//
//  AppDelegate.h
//  ProduceFinder
//
//  Created by Michael Alexander on 6/4/13.
//  Copyright (c) 2013 Michael Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProduceFinderViewController, DataModel;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navController;
@property (nonatomic, strong) IBOutlet ProduceFinderViewController *viewController;
@property (nonatomic, strong) DataModel *dataModel;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
