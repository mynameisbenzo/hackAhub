//
//  ViewController.swift
//  test
//
//  Created by Lorenzo Hernandez on 11/5/17.
//  Copyright © 2017 Lorenzo Hernandez. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UIWebViewDelegate, CLLocationManagerDelegate {

    //Mark: Variables
    var loadingFinishd = true
    var redirect = false
    var locationManager: CLLocationManager!
    
    //Mark: View Variables
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var bWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //location check/request
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        //stretch it
        webView.frame = self.view.bounds
        webView.scalesPageToFit = true
        
        let url = URL(string: "https://bounceapp.online/loaders/appLoader.php")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        webView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Mark: webviewdelegate
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        //?
        return true
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("loading")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("done")
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print(error.localizedDescription)
    }
    
    //Mark: CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self){
            if CLLocationManager.isRangingAvailable(){
                print("yes")
            }
        }
    }
    
    //Mark: Private functions
    private func getUniqueDeviceIdentifierAsString() -> String {
        return "ahhh"
    }

}

