//
//  ViewController.swift
//  whatsappUI
//
//  Created by Jeyaram on 06/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView : UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Chats"
        // Do any additional setup after loading the view.
        self.tableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "customList")
        tableView.delegate = self
        tableView.dataSource = self        
    }
    
   
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
        
        print(cell.NameOfPerson.text!)
//        let rootVc = stalkViewController()
        let rootVc = stalkViewController(nibName: "stalkViewController", bundle: nil)
        rootVc.title = "\(cell.NameOfPerson.text!)"
        
        guard let navigationVC = self.navigationController else { print("sdf"); return }
            navigationVC.pushViewController(rootVc, animated: true)
        
//        self.navigationController?.pushViewController(rootVc, animated: true)
//        let navVc = UINavigationController(rootViewController: rootVc )
//        navVc.modalPresentationStyle = .fullScreen
//      present(navVc,animated: true)
    }
//

}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataInstance = ShowData()
        let viewData = dataInstance.getData()
        let customCell = tableView.dequeueReusableCell(withIdentifier: "customList", for: indexPath) as! TableViewCell
        customCell.configure(viewData[indexPath.row].name, with: viewData[indexPath.row].msg, at: viewData[indexPath.row].time, dp: viewData[indexPath.row].image, msgStatus: viewData[indexPath.row].msgStatus)

        return customCell
        
    }
    
    
}


class secondViewController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .systemBlue
        title = "Welcome"
    }
}
/*
 //        switch indexPath.row{
 //        case 0:
 //            customCell.configure("", with: "Good Morning Dude", at: "9:34 AM", dp: "user-original", msgStatus: "double-tick")
 //
 //        case 1:
 //            customCell.configure("Bala", with: "What's up? bro", at: "9:36 AM", dp: "bala", msgStatus: "single-tick")
 //
 //        case 2:
 //            customCell.configure("Saajudeen", with: "I updated for you", at: "10:32 AM", dp: "saaj", msgStatus: nil)
 //
 //        case 3:
 //            customCell.configure("Abhilash", with: "Yeah I am fine", at: "11:44 AM", dp: "abbas", msgStatus: "double-tick")
 //
 //        default:
 //            customCell.configure("Rajesh", with: "Have you completed?", at: "12:34 PM", dp: "user-original", msgStatus: nil)
 //
 //
 //        }
 */
