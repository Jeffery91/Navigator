//
//  UIViewController+Showhelper.swift
//  nearbook
//
//  Copyright © 2016年 www.nearbook.com. All rights reserved.
//

import UIKit

extension UIViewController {
    func showByType(_ type: ShowType) {
        if type == ShowType.present {
            self.bePresented()
        }
        else {
            self.bePushed()
        }
    }
    
    private func bePresented() {
        NSLog("\(self) bePresented")
        // just test
        UIApplication.shared.keyWindow?.rootViewController?.present(self, animated: true, completion: nil)
    }
    
    private func bePushed() {
        NSLog("\(self) bePushed")
        // just test
        UIApplication.shared.keyWindow?.rootViewController?.present(self, animated: true, completion: nil)
    }
}
