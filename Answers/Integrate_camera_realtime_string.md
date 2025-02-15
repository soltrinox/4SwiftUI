```
SUPPORT a WORLD without WAR -->  vs. Greedy Oligarchs and Dictators
May Democracy Reign... 
```

Q: How to using realtime camera streaming in swiftui? (by Shydow Lee)

A: Here is a demo code of integration via `UIViewRepresentable`.

*Note: make sure all preparations done, like turned on Camera in capabilities, added NSCameraUsageDescription in Info.plist... and camera can be tested only on a real device.*


    import SwiftUI
    import UIKit
    import AVFoundation
    
    class PreviewView: UIView {
        private var captureSession: AVCaptureSession?
    
        init() {
            super.init(frame: .zero)
    
            var allowedAccess = false
            let blocker = DispatchGroup()
            blocker.enter()
            AVCaptureDevice.requestAccess(for: .video) { flag in
                allowedAccess = flag
                blocker.leave()
            }
            blocker.wait()
    
            if !allowedAccess {
                print("!!! NO ACCESS TO CAMERA")
                return
            }
    
            // setup session
            let session = AVCaptureSession()
            session.beginConfiguration()
    
            let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                for: .video, position: .unspecified) //alternate AVCaptureDevice.default(for: .video)
            guard videoDevice != nil, let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice!), session.canAddInput(videoDeviceInput) else {
                print("!!! NO CAMERA DETECTED")
                return
            }
            session.addInput(videoDeviceInput)
            session.commitConfiguration()
            self.captureSession = session
        }
    
        override class var layerClass: AnyClass {
            AVCaptureVideoPreviewLayer.self
        }
    
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
        var videoPreviewLayer: AVCaptureVideoPreviewLayer {
            return layer as! AVCaptureVideoPreviewLayer
        }
    
        override func didMoveToSuperview() {
            super.didMoveToSuperview()
    
            if nil != self.superview {
                self.videoPreviewLayer.session = self.captureSession
                self.videoPreviewLayer.videoGravity = .resizeAspect
                self.captureSession?.startRunning()
            } else {
                self.captureSession?.stopRunning()
            }
        }
    }
    
    struct PreviewHolder: UIViewRepresentable {
        func makeUIView(context: UIViewRepresentableContext<PreviewHolder>) -> PreviewView {
            PreviewView()
        }
    
        func updateUIView(_ uiView: PreviewView, context: UIViewRepresentableContext<PreviewHolder>) {
        }
    
        typealias UIViewType = PreviewView
    }
    
    struct DemoVideoStreaming: View {
        var body: some View {
            VStack {
                PreviewHolder()
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        }
    }

