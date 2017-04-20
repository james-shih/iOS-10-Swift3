//
//  ViewController.swift
//  firebase-sort-data
//
//  Created by jamesshih.ilink on 24/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//
// DB 存取失敗時，
// 需調整 Firebase -> Database -> rule 的規則
// 細節參考：https://firebase.google.com/docs/database/security/quickstart

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var msgField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var msgs = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        DataService.ds.MSGS_DB_REF.queryOrdered(byChild: "text").observe(.value, with: { (snapshot) in
          
            self.msgs = []
            
            if let snapshot = snapshot.children.allObjects as? [FIRDataSnapshot] {
                for snap in snapshot {
                    if let postDict = snap.value as? [String: AnyObject] {
                        let massage = Message(msgId: snap.key, msgData: postDict)
//                        self.msgs.append(massage)
                        self.msgs.insert(massage, at: 0)
                    }
                }
            }
            self.tableView.reloadData()
        })
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msgs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let msg = msgs[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as? MessageCell {
            cell.configureCell(msg: msg)
            return cell
        }
        return MessageCell()
    }

    @IBAction func sendBtnTapped(sender: AnyObject) {
        if let msgText = msgField.text, !msgText.isEmpty {
            let msg = [
                "text": msgText,
                "postedDate": FIRServerValue.timestamp()]
                as [String: Any]
            
            let fireMsg = DataService.ds.MSGS_DB_REF.childByAutoId()
            fireMsg.setValue(msg)
            
            msgField.text = ""
            tableView.reloadData()
        }
    }
}









