//
//  UITouch.swift
//  Cacao
//
//  Created by Alsey Coleman Miller on 6/8/17.
//

import class Foundation.NSObject
import Silica

/// An object representing the location, size, movement, and force of a touch occurring on the screen.
public final class UITouch: NSObject {
    
    /// The absolute location, relative to screen.
    internal let location: CGPoint
    
    internal init(location: CGPoint, phase: UITouchPhase, view: UIView?, window: UIWindow?) {
        
        self.location = location
        self.phase = phase
        self.view = view
        self.window = window
    }
    
    // MARK: - Getting the Location of a Touch
    
    /// Returns the current location of the receiver in the coordinate system of the given view.
    ///
    /// - Parameter view: The view object in whose coordinate system you want the touch located.
    /// A custom view that is handling the touch may specify self to get the touch location
    /// in its own coordinate system. Pass `nil` to get the touch location in the window’s coordinates.
    ///
    /// This method returns the current location of a UITouch object in the coordinate system of the specified view.
    /// Because the touch object might have been forwarded to a view from another view,
    /// this method performs any necessary conversion of the touch location to the coordinate system of the specified view.
    public func location(in view: UIView? = nil) -> CGPoint {
        
        fatalError()
    }
    
    /// Returns the previous location of the receiver in the coordinate system of the given view.
    public func previousLocation(in view: UIView? = nil) -> CGPoint {
        
        fatalError()
    }
    
    /// The view to which touches are being delivered, if any.
    public let view: UIView?
    
    /// The window in which the touch initially occurred.
    public let window: UIWindow?
    
    public internal(set) var gestureRecognizers: [UIGestureRecognizer]?
    
    /// The phase of the touch.
    public let phase: UITouchPhase
}

// MARK: - Supporting Types

public enum UITouchPhase: Int {
    
    /// A finger for a given event touched the screen.
    case began
    
    /// A finger for a given event moved on the screen.
    case moved
    
    /// A finger is touching the surface but hasn't moved since the previous event.
    case stationary
    
    /// A finger for a given event was lifted from the screen.
    case ended
    
    ///  The system canceled tracking for the touch, as when (for example) the user moves the device against his or her face.
    case cancelled
}