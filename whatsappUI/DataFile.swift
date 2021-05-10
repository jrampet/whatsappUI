//
//  File.swift
//  whatsappUI
//
//  Created by jeyaram-pt4154 on 10/05/21.
//

import Foundation
struct data{
    var name : String
    var msg  : String
    var time : String
    var image : String
    var msgStatus : String?
    
}
class ShowData{
    var viewData: [data] = []
    init(){
        viewData.append(data(name: "Rajesh", msg: "Good Morning Dude", time: "9:34 AM", image: "user-original", msgStatus: "double-tick"))
        viewData.append(data(name: "Bala", msg: "What's up? bro", time: "9:36 AM", image: "bala", msgStatus: "single-tick"))
        viewData.append(data(name: "Saajudeen", msg: "I updated for you", time: "10:32 AM", image: "saaj", msgStatus: nil))
        viewData.append(data(name: "Abhilash", msg: "Yeah I am fine", time: "11:44 AM", image: "abbas", msgStatus: "double-tick"))
        viewData.append(data(name: "Rajesh", msg: "Have you completed?", time: "12:34 PM", image: "user-original", msgStatus: nil))
    }
    func getData()-> [data]{
        return viewData
    }
    
}

