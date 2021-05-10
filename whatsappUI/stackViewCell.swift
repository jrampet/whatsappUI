//
//  stackViewCell.swift
//  whatsappUI
//
//  Created by Jeyaram on 07/05/21.
//

import UIKit

class stackViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    static let identifier = "stackCell"

    @IBOutlet var dp: UIImageView!
    @IBOutlet var NameOfPerson: UILabel!
    @IBOutlet weak var timeOfMessage: UILabel!
    @IBOutlet var incomingMessage: UILabel!
    
    @IBOutlet var statusOfMessage: UIImageView!
    
    @IBOutlet weak var nuberofMessage: UILabel!
    public func configure(_ name:String,with message:String,at time:String,dp image:String,msgStatus:String?) {
            
        dp.image = UIImage(named: image)
        NameOfPerson.text = name
        timeOfMessage.text = time
        incomingMessage.text = message
        if(msgStatus == nil) {
            statusOfMessage.widthAnchor.constraint(equalToConstant: 0).isActive = true
            NameOfPerson.font = UIFont.boldSystemFont(ofSize: 17.0)
            timeOfMessage.font = UIFont.boldSystemFont(ofSize: 13.0)
            incomingMessage.font = UIFont.boldSystemFont(ofSize: 16.0)
        }else{
            statusOfMessage.image = UIImage(named:msgStatus!)
            nuberofMessage.isHidden = true
        }
        self.selectionStyle = .none
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
