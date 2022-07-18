//
//  MovieCollectionViewCell.swift
//  buyFilm
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var moviePriceLabel: UILabel!
    @IBOutlet weak var MovieNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    @IBAction func orderClick(_ sender: Any) {
    }
}
