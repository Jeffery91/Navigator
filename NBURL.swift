//
//  NBURL.swift
//  nearbook
//
//  Copyright © 2016年 www.nearbook.com. All rights reserved.
//

import UIKit

enum ShowType {
    case none
    case present
    case push
}

class NBURL {
    var showType = ShowType.none
    
    var userInfo: Any?

    var host: String!
    var scheme: String!
    var absoluteString: String!
    
    private var innerURL: URLComponents!

    public init(_ urlString : String) {
        self.absoluteString = urlString
        self.innerURL = URLComponents(string: urlString)
        self.host = self.innerURL.host
        self.scheme = self.innerURL.scheme
        if let components = self.innerURL.queryItems {
            for item in components {
                self.setObject(item.value, forKey: item.name)
            }
        }
    }
    
    private var innerDic = Dictionary<String, Any?>()
    public func setObject(_ object: Any, forKey key: String) {
        innerDic.updateValue(object, forKey: key)
    }
    
    public func object(ForKey key: String) -> Any? {
        return innerDic[key]
    }
}
