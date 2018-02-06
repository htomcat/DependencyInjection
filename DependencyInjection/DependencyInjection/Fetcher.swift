//
//  Fetcher.swift
//  DependencyInjection
//
//  Created by htomcat on 2018/02/05.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation
import UIKit

struct Fetcher {
    let networking: Networking
    
    func fetch(response: @escaping (UIImage?) -> ()) {
        networking.request {
            guard let data = $0 else {
                response(nil)
                return
            }
            let image = UIImage(data: data)
            response(image)
        }
    }
}
