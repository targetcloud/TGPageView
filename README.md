# TGPageView
类似网易新闻的导航条，支持滚动、缩放动画、渐变、遮罩等，可以任意组合各效果，史上最赞
------------------------------------------------------------------------

如何使用

>    `let pageViewFrame = CGRect(x: 0, y: 64, width: view.bounds.width, height: view.bounds.height - 64 )//非scrollView设置64`

### 1 默认不可滚动，底下有跟踪滚动条（下划线） 等分
```swift
>    `let titles = ["推荐","视频","图片","段子","投票"]`<br>
>    `let style = TGPageStyle()`
```
        
### 2 滚动模式，底下有跟踪滚动条（下划线） 不等分，根据文字大小设置下划线
>    `let titles = ["推荐","视频","这是一个测试","图片","段子","投票","排行","互动区","网红","社会","美女","冷知识","游戏"]`<br>
>    `let style = TGPageStyle()`<br>
>    `style.isScrollEnable = true//滚动模式`

        
### 3 无跟踪滚动条（下划线）  用遮罩  缩放支持
>    `let titles = ["推荐","视频","这是一个测试","图片","段子","投票","排行","互动区","网红","社会","美女","冷知识","游戏"]`<br>
>    `let style = TGPageStyle()`<br>
>    `style.isScrollEnable = true`<br>
>    `style.isNeedTitleScale = true//缩放支持`<br>
>    `style.isShowCoverView = true//用遮罩`

        
### 4 遮罩加跟踪滚动条，系统默认情况下使用遮罩时会隐藏底部的跟踪滚动条，若要同时有滚动条，则在设置遮罩后再设置滚动条
>    `let titles = ["推荐","视频","这是一个测试","图片","段子","投票","排行","互动区","网红","社会","美女","冷知识","游戏"]`<br>
>    `let style = TGPageStyle()`<br>
>    `style.isScrollEnable = true`<br>
>    `style.isNeedTitleScale = true`<br>
>    `style.isShowCoverView = true`<br>
>    `style.isShowBottomLine = true`

        
### 根据自己想要的效果自由配置style，如等分并缩放支持
>    `let titles = ["推荐","视频","图片","段子","投票"]`<br>
>    `let style = TGPageStyle()`<br>
>    `style.isNeedTitleScale = true//缩放支持`<br>
>    `style.bottomLineExtendWidth = 18//相当于inset，因为transform会影响frame，用bottomLineExtendWidth改变底部跟踪滚动条（下划线）的缩进`<br>
>    `var childVCs = [UIViewController]()`<br>
>    `for _ in 0..<titles.count {`<br>
>    `  let vc = UIViewController()`<br>
>    `  vc.view.backgroundColor = UIColor.random()`<br>
>    `  childVCs.append(vc)`<br>
>    `}`<br>
>    `let pageView = TGPageView(frame: pageViewFrame, titles: titles, titleStyle: style, childVCs: childVCs, parentVC: self)`<br>
>    `view.addSubview(pageView)`
