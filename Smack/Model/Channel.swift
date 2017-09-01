//
//  Channel.swift
//  Smack
//
//  Created by Virgil Nilson on 9/1/17.
//  Copyright © 2017 Virgil Nilson. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int!
}
