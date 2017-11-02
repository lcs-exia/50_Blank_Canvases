//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Draw Background
canvas.translate(byX: 200, byY: 300)
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 0, centreY: 0, width: 400, height: 600)

// Draw Shape of Ghost
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 0, centreY: 100, width: 300, height: 300)
canvas.drawRectangle(centreX: 0, centreY: 0, width: 300, height: 200)
canvas.fillColor = Color.black
for y in stride(from: -60, through: 60, by: 120){
    canvas.drawEllipse(centreX: y, centreY: -110, width: 70, height: 70)
}
for x in stride(from: -120, through: 150, by: 120){
    canvas.drawEllipse(centreX: x, centreY: -100, width: 60, height: 60)
}

// Draw Eyes
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: -70, centreY: 150, width: 60, height: 70)
canvas.drawEllipse(centreX: 70, centreY: 150, width: 60, height: 70)

// Draw Mouth
canvas.drawEllipse(centreX: 0, centreY: 50, width: 60, height: 80)


/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
canvas.copyToClipboard()

