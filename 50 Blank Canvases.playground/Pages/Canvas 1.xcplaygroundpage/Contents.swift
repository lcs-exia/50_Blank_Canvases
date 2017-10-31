//: [Next](@next)
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
let canvas = Canvas(width: 500, height: 300)


/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Background
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 250, centreY: 150, width: 500, height: 300)
// Draw first set of circles
canvas.borderColor = Color.white
canvas.defaultBorderWidth = 5
for x in stride(from: 0, through: 500, by: 80){
    for y in stride(from: 300, through: 0, by: -100){
    //let y = 0
        for z in stride(from: 60, through: 0, by: -12){
//            canvas.drawEllipse(centreX: x+30, centreY: y-20, width: z, height: z)
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
//            canvas.drawEllipse(centreX: x-10, centreY: y-100, width: z, height: z)
        }
    }
}

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


