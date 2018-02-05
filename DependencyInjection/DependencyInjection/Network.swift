//
//  Network.swift
//  DependencyInjection
//
//  Created by htomcat on 2018/02/05.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation
import Alamofire

struct Network: Networking {
    let networking: Networking

    func request(response: @escaping (Data?) -> ()) {
        Alamofire.request(CountryInfoAPIConfiguration.url,
                          method: .get,
                          parameters: CountryInfoAPIConfiguration.parameters).response { data in
                            response(data.data)
        }
    }
}
