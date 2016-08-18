//
//  BuscaTableViewCell.swift
//  ZooHome
//
//  Created by Student on 8/16/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import UIKit

class BuscaTableViewCell: UITableViewCell {

    @IBOutlet weak var imagemBusca: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelTamanho: UILabel!
    @IBOutlet weak var labelRegiao: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
