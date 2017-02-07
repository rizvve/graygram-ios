//
//  Post.swift
//  Graygram
//
//  Created by Suyeol Jeon on 08/02/2017.
//  Copyright © 2017 Suyeol Jeon. All rights reserved.
//

import ObjectMapper

struct Post: Mappable {

  var id: Int!
  var message: String?
  var createdAt: Date!

  init?(map: Map) {
  }

  mutating func mapping(map: Map) {
    self.id <- map["id"]
    self.message <- map["message"]
    self.createdAt <- (map["created_at"], ISO8601DateTransform())
  }

}