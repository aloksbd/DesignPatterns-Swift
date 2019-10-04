//
//  ProxyPattern.swift
//  design_patterns
//
//  Created by mac on 10/4/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

class BankAccount {
    var accountNumber: String
    var accountHolderName: String
    var amount: Int
    var pin: Int
    
    init(accountNumber: String, accountHolderName: String, amount: Int){
        self.accountNumber = accountNumber
        self.accountHolderName = accountHolderName
        self.amount = amount
        pin = 1234
    }
    
    func withdrawMoney(amount: Int){
        self.amount -= amount
    }
    
    func deposite(amount: Int){
        self.amount += amount
    }
    
    func printStatement(){
        print("======== Proxy Bank ========")
        print("=== Statement of account ===")
        print("Name:",accountHolderName)
        print("Account Number:", accountNumber)
        print("amount:",amount)
        print("============================")
    }
}


class ATM{
    var account: BankAccount
    
    // accountHolderName and amount is not logical. We need some logic to return right bankAccount for accountNumber.
    init(accountNumber: String, accountHolderName: String, amount: Int){
        account = BankAccount(accountNumber: accountNumber, accountHolderName: accountHolderName, amount: amount)
    }
    
    func withdrawMoney(amount: Int, pin: Int){
        if correct(pin: pin){
            account.withdrawMoney(amount: amount)
            account.printStatement()
        }else{
            print("WRONG PIN NUMBER")
        }
    }
    
    func correct(pin: Int) -> Bool{
        return pin == account.pin
    }
}
