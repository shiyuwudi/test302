//
//  ViewController.swift
//  test302
//
//  Created by shi.yu on 2020/12/04.
//

import UIKit
import WebKit
import WKCookieWebView

class ViewController: UIViewController {
    
    var wv: WKCookieWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        WKCookieWebView.preloadWithDomainForCookieSync(urlString: "api.pre.chargespot.cn") {
            print(111)
        }
        
        wv = WKCookieWebView(frame: self.view.frame)
        self.view.addSubview(wv)
        //加载网页
        wv.load(NSURLRequest(url:NSURL.init(string:"https://api.pre.chargespot.cn/v1/tpoint/member/bind/6490?agreeDeduct=1")! as URL) as URLRequest)
        
    }
    
}
