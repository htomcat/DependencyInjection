//
//  Networking.swift
//  DependencyInjection
//
//  Created by htomcat on 2018/02/05.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

protocol Networking {
    func request(response: (Data?) -> ())
}
