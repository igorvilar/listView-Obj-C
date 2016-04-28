//
//  ViewController.m
//  listViewObjC
//
//  Created by Igor Vilar on 4/27/16.
//  Copyright © 2016 Igor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    swiftHeavyMetal = @[@"Alice Cooper", @"Black Sabbath", @"Deep Purple", @"Iron Maiden", @"Judas Priest", @"Megadeth", @"Metallica", @"Motörhead"];
    textCellIdentifier = @"TextCell";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [swiftHeavyMetal count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    if (cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:textCellIdentifier];
    }
    NSInteger linha = indexPath.row;
    cell.textLabel.text = swiftHeavyMetal[linha];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger linha = indexPath.row;
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Alerta"
                                  message:swiftHeavyMetal[linha]
                                  preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        //do something when click button
    }];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
