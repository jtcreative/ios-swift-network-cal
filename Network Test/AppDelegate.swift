//
//  AppDelegate.swift
//  Network Test
//
//  Created by James Timberlake on 7/29/14.
//  Copyright (c) 2014 MB_Test. All rights reserved.
//

import UIKit

@UIApplicationMain



class AppDelegate: UIResponder, UIApplicationDelegate, NSURLConnectionDataDelegate {
    
    
    
    var connData : NSMutableData!
    
    var window: UIWindow?
    
    
    
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        
        // Override point for customization after application launch.
        
        
        
        var url : NSURL = NSURL.URLWithString("your-rest-url-here");
        
        
        
        var request : NSURLRequest = NSURLRequest(URL: url);
        
        
        
        var connection : NSURLConnection = NSURLConnection(request: request, delegate: self);
        
        
        
        connection.start();
        
        
        
        return true
        
    }
    
    
    
    func connection(__connection: NSURLConnection!,
        
        didReceiveData data: NSData!){
            
            
            
            if(connData == nil)
                
            {
                
                connData = NSMutableData(data: data);
                
            }else{
                
                connData.appendData(data);
                
            }
            
            
            
            
            
            
            
            
            
    }
    
    
    
    func connectionDidFinishLoading(connection: NSURLConnection!){
        
        var responseStr : NSString = NSString(data: connData, encoding: NSUTF8StringEncoding);
        
        
        
        var json : NSArray  = NSJSONSerialization.JSONObjectWithData(connData, options: NSJSONReadingOptions.AllowFragments, error: nil) as NSArray ;
        
        
        
        var object1 = json[0];
        
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {
        
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        
    }
    
    
    
    func applicationDidEnterBackground(application: UIApplication) {
        
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
    }
    
    
    
    func applicationWillEnterForeground(application: UIApplication) {
        
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        
    }
    
    
    
    func applicationDidBecomeActive(application: UIApplication) {
        
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
    }
    
    
    
    func applicationWillTerminate(application: UIApplication) {
        
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
    }
    
    
    
    
    
}

