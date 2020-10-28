//
//  TestViewController.swift
//  SwiftPlay
//
//  Created by jeroldliu on 2020/5/31.
//  Copyright © 2020 jeroldliu. All rights reserved.
//

import UIKit
let screen_width = UIScreen.main.bounds.size.width
let screen_height = UIScreen.main.bounds.size.height
let windowKey = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
func STATUSBAR_HEIGHT() -> CGFloat {return windowKey?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0}
func RGB_COLOR(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {return UIColor(red: r, green: g, blue: b, alpha: 1)}


class TestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    let cellIdentifierOne = "TestOneCell.Type.self"
    lazy var tableView:UITableView = {
        var tableViewTemp:UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: screen_width, height: screen_height))
        tableViewTemp.delegate = self
        tableViewTemp.dataSource = self
        tableViewTemp .register(TestOneCell.classForCoder(), forCellReuseIdentifier: cellIdentifierOne)
        tableViewTemp.tableFooterView = UIView.init() //去掉尾部无数据的多余cell
        return tableViewTemp
    }()
    
    lazy var collectionViewJer:UICollectionView = {
        var collectionLayOut:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        collectionLayOut.itemSize = CGSize(width: 100, height: 200)
        collectionLayOut.minimumLineSpacing = 0
        collectionLayOut.minimumInteritemSpacing = 0
        var collect:UICollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: screen_width, height: 200), collectionViewLayout: collectionLayOut)
        collect.delegate = self
        collect.dataSource = self
        collect.register(TestCollectCell.classForCoder(), forCellWithReuseIdentifier: cellIdentifierOne)
        return collect
    }()
    
    var array:[String] = ["纯代码自定义cell","纯代码自定义cell2","神奇的呆蛙"]
    
    
    ///tableview delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:TestOneCell? = tableView.dequeueReusableCell(withIdentifier: cellIdentifierOne, for: indexPath) as? TestOneCell
        if cell == nil {
            cell = TestOneCell.init()
        }
        cell?.titleLabel.text = array[indexPath.row]
        cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    //cell 点击事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1:
            print("didSelectRow1")
            break
        default:
            print("default")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell:UICollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifierOne, for: indexPath)
        if cell == nil {
            cell = TestCollectCell.init()
        }
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UITableView by Jerold"
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(tableView)
        
        
        
    }
    

}
