//
//  CardCollectionViewCell.swift
//  bankingApp
//
//  Created by miguel toledo on 08/09/22.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var numberCardLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var typeCardLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.layer.shadowOffset = CGSize(width: 10,
                                          height: 10)
        viewCell.layer.shadowRadius = 5
        viewCell.layer.shadowOpacity = 0.3
    }

}
