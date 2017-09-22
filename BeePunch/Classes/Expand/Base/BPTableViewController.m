//
//  BPTableViewController.m
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import "BPTableViewController.h"

@interface BPTableViewController ()

@end

@implementation BPTableViewController
    
+ (instancetype)allocWithZone:(struct _NSZone *)zone {

    BPTableViewController *tableViewController = [super allocWithZone:zone];

    @weakify(tableViewController)
    [[tableViewController rac_signalForSelector:@selector(viewDidLoad)] subscribeNext:^(id x) {
        @strongify(tableViewController)
        [tableViewController bp_addSubviews];
        [tableViewController bp_bindViewModel];
    }];

    [[tableViewController rac_signalForSelector:@selector(viewWillAppear:)] subscribeNext:^(id x) {
        @strongify(tableViewController)
        [tableViewController bp_layoutNavigation];
        [tableViewController bp_getNewData];
    }];
    
    [[tableViewController rac_signalForSelector:@selector(viewWillDisappear:)] subscribeNext:^(id x) {
        @strongify(tableViewController)
        [tableViewController bp_willDisappear];
    }];
    
    return tableViewController;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
        
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -- RAC --
    
/** 添加控件 */
- (void)bp_addSubviews {}
/** 绑定RAC */
- (void)bp_bindViewModel {}
/** 设置navigation */
- (void)bp_layoutNavigation {}
/** 初次获取数据 */
- (void)bp_getNewData {}
/** 即将消失时 */
- (void)bp_willDisappear {}
    
@end
