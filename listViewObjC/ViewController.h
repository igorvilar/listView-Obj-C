//
//  ViewController.h
//  listViewObjC
//
//  Created by Igor Vilar on 4/27/16.
//  Copyright © 2016 Igor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    NSArray *swiftHeavyMetal;
    NSString *textCellIdentifier;

}
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

