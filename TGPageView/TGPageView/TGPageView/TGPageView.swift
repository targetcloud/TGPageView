//
//  TGPageView.swift
//  TGPageView
//
//  Created by targetcloud on 2017/3/22.
//  Copyright © 2017年 targetcloud. All rights reserved.
//

import UIKit

class TGPageView: UIView {

    fileprivate var titles : [String]
    fileprivate var childVCs : [UIViewController]
    fileprivate var parentVC : UIViewController
    fileprivate var titleStyle : TGPageStyle
    
    init(frame: CGRect,titles : [String],titleStyle : TGPageStyle,childVCs : [UIViewController],parentVC : UIViewController) {
        self.titles = titles
        self.childVCs = childVCs
        self.parentVC = parentVC
        self.titleStyle = titleStyle
        
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TGPageView{
    fileprivate func setupUI(){
        let titleViewFrame = CGRect(x: 0, y: 0, width: bounds.width, height: titleStyle.titleViewHeight)
        let titleView = TGTitleView(frame:titleViewFrame,titles:titles,style:titleStyle)
        titleView.backgroundColor = UIColor.orange
        addSubview(titleView)
        
        let contentFrame = CGRect(x: 0, y: titleViewFrame.maxY, width: bounds.width, height: bounds.height - titleStyle.titleViewHeight)
        let contentView = TGContentView(frame: contentFrame, childVCs: childVCs, parentVC: parentVC)
        contentView.backgroundColor = .red
        addSubview(contentView)
        
        //titleView与contentView进行协作
        //MARK:- 代理 1
        titleView.delegate = contentView
        
        //MARK:- 代理的使用 1
        contentView.delegate = titleView
    }
}

