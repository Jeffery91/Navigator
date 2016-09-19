//
//  NBNavigator.swift
//  nearbook
//
//  Copyright © 2016年 www.nearbook.com. All rights reserved.
//

import UIKit

open class NBNavigator {
    
    var validScheme: String?
    open static let `default` = NBNavigator()
    
    private var urlMap = [String: (NBURL) -> Any?]()
    
    func register(_ host: String, _ type: NBNavigatable.Type) {
        urlMap[host] = type.opened
    }
    
    @discardableResult
    func open(_ url: NBURL) -> Any? {
        guard validScheme != nil else {
            NSLog("pelease set the valid scheme")
            return nil
        }
        
        guard url.scheme != nil else {
            NSLog("url scheme is empty")
            return nil
        }
        
        guard url.host != nil else {
            NSLog("url host is empty")
            return nil
        }
        
        guard url.scheme == validScheme! else {
            UIApplication.shared.open(URL(string: url.absoluteString)!)
            NSLog("schme \(url.scheme!) is not valid, open url use UIApplication")
            return nil
        }
        
        let action = urlMap[url.host!]
        guard action != nil else {
            NSLog("url \(url.host!) is not registed")
            return nil
        }
        return action!(url)
    }
}

public let Navigator = NBNavigator.default
