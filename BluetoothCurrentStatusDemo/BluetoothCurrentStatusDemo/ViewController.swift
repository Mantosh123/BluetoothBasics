//
//  ViewController.swift
//  BluetoothCurrentStatusDemo
//
//  Created by Mantosh Kumar on 12/06/24.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController, CBCentralManagerDelegate {
    
    var centralManager = CBCentralManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centralManager = CBCentralManager(delegate: self, queue: nil)
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        
        if central.state == CBManagerState.poweredOn {
            print("your Bluetooth is ON")
        } else {
            print("your bluetooth is OFF")
        }
    }
    


}

