//
//  ReceiveMainInteractor.swift
//  SwiftLightning
//
//  Created by Howard Lee on 2018-04-21.
//  Copyright (c) 2018 BiscottiGelato. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ReceiveMainBusinessLogic
{
  func doSomething(request: ReceiveMain.Something.Request)
}

protocol ReceiveMainDataStore
{
  //var name: String { get set }
}

class ReceiveMainInteractor: ReceiveMainBusinessLogic, ReceiveMainDataStore
{
  var presenter: ReceiveMainPresentationLogic?
  var worker: ReceiveMainWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: ReceiveMain.Something.Request)
  {
    worker = ReceiveMainWorker()
    worker?.doSomeWork()
    
    let response = ReceiveMain.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
