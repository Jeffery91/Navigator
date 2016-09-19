//
//  NBNavigatable.swift
//  nearbook
//
//  Copyright © 2016年 www.nearbook.com. All rights reserved.
//

import Foundation

protocol NBNavigatable {
    static func opened(_ url: NBURL) -> Any?
}
