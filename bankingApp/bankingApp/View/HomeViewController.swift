//
//  HomeViewController.swift
//  bankingApp
//
//  Created by miguel toledo on 08/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var cardCollection: UICollectionView!
    let  CARD_CUSTOM_IDENTIFIER="cardCustomCell"
    var cards=[Card]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        //cardCollection.dataSource=self
        let nibCell=UINib(nibName: "CardCollectionViewCell", bundle: nil)
        cardCollection.register(nibCell, forCellWithReuseIdentifier: CARD_CUSTOM_IDENTIFIER)
//        for _ in 1...10{
//            let card=Card(type: "debit", balance: "4030202", number: "12232342345345", date: "34/45")
//            cards.append(card)
//        }
        cardCollection.dataSource=self
        
    }
    

    
  

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
 
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CARD_CUSTOM_IDENTIFIER, for: indexPath) as? CardCollectionViewCell else {
            print("ERROR")
            return UICollectionViewCell()
            
            
        }
    
//        let card = cards[indexPath.row]
//        cell.viewCell.backgroundColor = .gray
//        cell.balanceLabel.text=card.balance
//        cell.dateLabel.text=card.date
//        cell.numberCardLabel.text=card.number
//        cell.typeCardLabel.text=card.type
//
//        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 300, height: 150)
        }
    
}


