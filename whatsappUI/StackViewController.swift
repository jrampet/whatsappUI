//
//  stalkViewController.swift
//  whatsappUI
//
//  Created by Jeyaram on 07/05/21.
//

import UIKit

class stalkViewController: UIViewController {
    
    @IBOutlet var stackView : UITableView!
    let dataInstance = ShowData()
    var viewData : [data] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stackView.register(UINib.init(nibName: "stackViewCell", bundle: nil), forCellReuseIdentifier: "stackCell")
        stackView.delegate = self
        stackView.dataSource = self
        viewData = dataInstance.getData()
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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "stackCell", for: indexPath) as! stackViewCell
        

        let cellAtIndex = viewData[indexPath.row]
        customCell.configure(cellAtIndex.name, with: cellAtIndex.msg, at: cellAtIndex.time, dp: cellAtIndex.image, msgStatus: cellAtIndex.msgStatus)

        return customCell
       
        
    }
    
    
}
