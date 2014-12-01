//
//  ViewController.m
//  2011A
//
//  Created by ビザンコムマック０７ on 2014/11/19.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self chebishef:30];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//引数に対してチェビシェフの定理を用いるメソッド
-(void)chebishef:(int)n{
    if ((n > 0) && (n <= 123456)) {
        //素数の数をカウントするための変数(初期値0)
        int count = 0;
        //n+1から2n以下の中に素数が何個あるか調べる
        for (int i = n + 1;i <= n * 2;i++ ) {
            //素数を判定するために使われるBOOL変数
            BOOL judge = YES;
                //iが素数がどうかしらべる
                //iが2からi/2までの数の中であまりなく割り切れる数があるかどうか調べる
                for (int k = 2; k <= i / 2; k++) {
                    //あまりなく割り切れる数がある場合、judgeをNOとしループ処理を終了
                    if (i % k == 0) {
                        judge = NO;
                        break;
                    }
                }
            //judgeがYESの場合のみcountをインクリメント
            if (judge) {
                NSLog(@"%dは素数",i);
                count++;
            }else{
                NSLog(@"%dは素数ではない",i);
            }
        }
        NSLog(@"%d<p<=%dを満たす素数pの個数は%d",n,2 * n,count);
    }
}
@end
