//
//  MenuView.swift
//  Imago Capture
//
//  Created by ios6 on 5/23/18.
//  Copyright © 2018 QuickScape. All rights reserved.
//

import UIKit

class MenuView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cameraInfo(_ sender: Any) {
        let cameraAlert = UIAlertController(title: "Camera",
                                            message: "Capture: Take Photos and Videos with object and face detection in real time. \n Analyze: View and detect objects that are within a previously taken photo.",
                                            preferredStyle: UIAlertControllerStyle.alert)
        
        let image = UIImage(named: "camera_lens-captureCapture")
        cameraAlert.addImage(image: image!)
        
        let cancelAction = UIAlertAction(title: "Ok",
                                         style: .cancel, handler: nil)
        
        cameraAlert.addAction(cancelAction)
        self.present(cameraAlert, animated: true, completion: nil)
    }
    @IBAction func MapsCamera(_ sender: Any) {
        let mapCameraAlert = UIAlertController(title: "Maps",
                                               message: "Capture: View a live AR View of the real world with location data, showing you live store detection and more.",
                                               preferredStyle: UIAlertControllerStyle.alert)
        
        let image = UIImage(named: "camera_lens-captureCapture")
        mapCameraAlert.addImage(image: image!)
        
        let cancelAction = UIAlertAction(title: "Ok",
                                         style: .cancel, handler: nil)
        
        mapCameraAlert.addAction(cancelAction)
        self.present(mapCameraAlert, animated: true, completion: nil)
    }
    
    @IBAction func photoGallery(_ sender: Any) {
        let photoGalleryAlert = UIAlertController(title: "Gallery",
                                                  message: "View your photo gallery.",
                                                  preferredStyle: UIAlertControllerStyle.alert)
        
        let image = UIImage(named: "camera_lens-captureCapture")
        photoGalleryAlert.addImage(image: image!)
        
        let cancelAction = UIAlertAction(title: "Ok",
                                         style: .cancel, handler: nil)
        
        photoGalleryAlert.addAction(cancelAction)
        self.present(photoGalleryAlert, animated: true, completion: nil)
    }
}
