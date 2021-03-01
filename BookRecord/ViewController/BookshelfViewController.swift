//
//  BookshelfViewController.swift
//  BookRecord
//
//  Created by Mika Miyakawa on 2021/02/21.
//

import UIKit

class BookshelfViewController: UIViewController ,UICollectionViewDataSource,
                               UICollectionViewDelegate{
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView,
                            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            
            // "Cell" はストーリーボードで設定したセルのID
            let testCell:UICollectionViewCell =
                collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",
                                                   for: indexPath)
            
            // Tag番号を使ってImageViewのインスタンス生成
            let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
            // 画像配列の番号で指定された要素の名前の画像をUIImageとする
            let cellImage = UIImage(named: photos[indexPath.row])
            // UIImageをUIImageViewのimageとして設定
            imageView.image = cellImage
            
            // Tag番号を使ってLabelのインスタンス生成
            let label = testCell.contentView.viewWithTag(2) as! UILabel
            label.text = photos[indexPath.row]
            
            return testCell
        }
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            // section数は１つ
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView,
                            numberOfItemsInSection section: Int) -> Int {
            // 要素数を入れる、要素以上の数字を入れると表示でエラーとなる
            return photos.count;
        }
}
