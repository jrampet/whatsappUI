//
//  stalkViewController.swift
//  whatsappUI
//
//  Created by Jeyaram on 07/05/21.
//

import UIKit

class stalkViewController: UIViewController {
    
    @IBOutlet var stackView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stackView.register(UINib.init(nibName: "stackViewCell", bundle: nil), forCellReuseIdentifier: "stackCell")
        stackView.delegate = self
        stackView.dataSource = self
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension stalkViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        self.dismiss(animated: true, completion: nil)
    }
}
extension stalkViewController : UITableViewDataSource{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "stackCell", for: indexPath) as! stackViewCell
        switch indexPath.row{
        case 0:
            customCell.configure("Rajesh", with: "Good Morning Dude", at: "9:34 AM", dp: "user-original", msgStatus: "double-tick")
            
        case 1:
            customCell.configure("Bala", with: "What's up? bro", at: "9:36 AM", dp: "bala", msgStatus: "single-tick")
          
        case 2:
            customCell.configure("Saajudeen", with: "I updated for you", at: "10:32 AM", dp: "saaj", msgStatus: nil)
        
        case 3:
            customCell.configure("Abhilash", with: "Yeah I am fine", at: "11:44 AM", dp: "abbas", msgStatus: "double-tick")
          
        default:
            customCell.configure("Rajesh", with: "Have you completed?", at: "12:34 PM", dp: "user-original", msgStatus: nil)
            
            
        }
        return customCell
        
    }
    
    
}
