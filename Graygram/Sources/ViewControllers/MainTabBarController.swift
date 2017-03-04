//
//  MainTabBarController.swift
//  Graygram
//
//  Created by Suyeol Jeon on 05/03/2017.
//  Copyright © 2017 Suyeol Jeon. All rights reserved.
//

import UIKit

final class MainTabBarController: UITabBarController {

  let feedViewController = FeedViewController()

  /// 업로드 버튼을 할 가짜 뷰 컨트롤러. 실제로 선택되지는 않습니다.
  let fakeUploadViewController = UIViewController().then {
    $0.tabBarItem.image = UIImage(named: "tab-upload")
    $0.tabBarItem.imageInsets.top = 5
    $0.tabBarItem.imageInsets.bottom = -5
  }

  init() {
    super.init(nibName: nil, bundle: nil)
    self.viewControllers = [
      UINavigationController(rootViewController: self.feedViewController),
      self.fakeUploadViewController,
    ]
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
