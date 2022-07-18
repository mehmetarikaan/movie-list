//
//  MovieCollectionViewCell.swift
//  buyFilm
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import UIKit

protocol MovieCollectionViewCellProtocol {
    func orderto(indexPath: IndexPath)
}

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var moviePriceLabel: UILabel!
    @IBOutlet weak var MovieNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    var hucreProtocol: MovieCollectionViewCellProtocol?
    var indexPath: IndexPath?
    
    
    
    @IBAction func orderClick(_ sender: Any) {
        hucreProtocol?.orderto(indexPath: indexPath!)
    }
}
