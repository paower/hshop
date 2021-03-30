<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:39:"./themes/default/index/user\wallet.html";i:1570438180;}*/ ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>我的积分</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="/public/static/css/balance.css" rel="stylesheet" type="text/css"/>
	<style>
		body{
			max-width: 640px;
			overflow: hidden;
			margin: 0 auto;
		}
		#explain{
			font-size:12px;
			color:#5f5f5f;
		}
	</style>
    </head>
    <body>
        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed">
                <a href="javascript:;" onclick="history.go(-1)" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title"></span>
                </div>
            </header>
            <section class="aui-scrollView">
                <div class="aui-line-box">
                    <div class="aui-line-circle">
                        <h2>我的资产</h2>
                        <p>
                            <em>￥<?php echo $wallet['principal']; ?></em>
                        </p>
                        <p id="explain">您获预赠10套产品价值600元</p>
                        <p id="explain">每邀请2人获领1套+购物券40元</p>
						<!-- <p id="explain">已获得<?php echo $huozeng; ?>套产品</p> -->
                    </div>
                    <div class="aui-line-text">
                        <p>
                            <i class="aui-line-red"></i>
                            体验用户数: <em><?php echo $wallet['number']; ?></em>
                        </p>
						<p>
                            <i class="aui-line-blue"></i>
                        	已获得<em><?php echo $huozeng; ?></em>套产品 (已领<?php echo $taozhuang_count; ?>套)
                        </p>
                        <p>
                            <i class="aui-line-blue"></i>
                        	获邀请购物券: <em>￥<?php echo number_format($wallet['interest'],2); ?></em>
                        </p>
						
						<p>
                            <i class="aui-line-blue"></i>
                            累积收益: <em><?php echo number_format($wallet['accumulate'],2); ?></em>
                        </p>
                        <p>
                            <i class="aui-line-blue"></i>
                            待结算收益: <em><?php echo number_format($wallet['settlement'],2); ?></em>
                        </p>
						<p>
                            <i class="aui-line-blue"></i>
                        	到账收益: <em>￥<?php echo number_format($wallet['principal'],2); ?></em>
                        </p>
                        
						
                    </div>
                </div>
                <div class="aui-cells">
					<a href="<?php echo url('user/transfer'); ?>" class="aui-cells-cell">
                        <div class="aui-cell-hd">
                            <h4>转账</h4>
                            <p>转账给好友</p>
                        </div>
                        <span class="aui-cell-fr"></span>
                    </a>
                    <a href="<?php echo url('user/bill'); ?>" class="aui-cells-cell">
                        <div class="aui-cell-hd">
                            <h4>账单</h4>
                            <p>支付、充值、提现明细</p>
                        </div>
                        <span class="aui-cell-fr"></span>
                    </a>
                    <a href="<?php echo url('user/profit'); ?>" class="aui-cells-cell">
                        <div class="aui-cell-hd">
                            <h4>收益</h4>
                            <p>收益明细</p>
                        </div>
                        <span class="aui-cell-fr">查看收益</span>
                    </a>
                </div>
            </section>
            <footer class="aui-footer">
                <a href="<?php echo url('user/withdrawal'); ?>" class="aui-forward">提现</a>
                <a href="<?php echo url('user/recharge'); ?>" class="aui-recharge">充值</a>
            </footer>
        </section>
    </body>
</html>
