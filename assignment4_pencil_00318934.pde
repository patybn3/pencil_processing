/* Assigment 4
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
4 October 2020

- The purpose of this code is to create a pencil drawing using Processing. 

I originally made a regular pencil with straight forward instructions (which I saved the 
code on a separate file if needed) since my original algorithm was too detailed. So I 
followed my second algorithm on that code, but since the Professor asked for us to impress her, 
I decided to take the next step.

I have researched various tools and functions to make the pencil 3D. That includes, 
P3D, for loops, light(), directLight(), translate(), shadows, etc. Everything I implemented
did not give the effect I wanted (except by shadow, I couldn't find this function. I dont know
if it exists). I would like to learn more about 3D and light effects. I also
did not want to make this code too long and complicated (I am known for that). I decided to 
play with the colors instead. This design will be built in a 8-bit color "scheme" style (not
really 8-bit).
    
This tutorial uses the following functions:
 
 size, background, noStroke, fill, ellipse, rect, triangle, smooth.
 
 Code structure:
 
 - variables for colors
 - setup
   - screen size
   - smoothing the edges
   - removing shapes' border
 - draw
   - background color
   - Eraser
   - Eraser Holder / Ferrule
   - Pencil Body
   - Wood tip
   - Lead

*/


// Code starts here

// set variables for the colors to be used in the future
// Colors used
int eraser = color(22, 240, 60);
int pink1 = color(252, 3, 173);
int pink2 = color(255, 94, 204);
int pink3 = color(217, 63, 168);
int background = color(255, 240, 181);
int gray = color(160);
int silver = color(180);
int wood1 = color(105, 87, 70);
int wood2 = color(138, 114, 91);
int wood3 = color(168, 139, 111);
int darkgray = color(140);
int lead = color(90);


// wrap the settings
void setup() {

// create a screen sized 500 wide and 500 tall.
size(500, 500);

// smooth the edges of the shapes
smooth();

// remove stroke from shapes (border)
noStroke();

}

// wrap shapes into draw
void draw() {
  
// add a background color to the screen of light yellow using the background variable.
background(background);


// Eraser. 
// Fill the eraser with the color called eraser, neon green.
fill(eraser);
// create an ellipse and place it at x=255, y=80 and make it 30px wide and 36px tall.
ellipse(255, 80, 30, 36);


// Eraser holder / Ferrule. 
/* We are going to make three rectangles of different sizes and colors and place them one inside
of the other, first set the color of the first rectangle to darkgray. */
fill(darkgray);
// Make a rectangle, place it at x= 240, y= 85 and give it a width of 30px and a height of 40px.
rect(240, 85, 30, 40);
// Fill the second rectangle with the gray color
// We are going to place this rectangle inside of the previous one centralizing it
fill(gray);
// Make a rectangle, place it at x=245, y= 85, and give it a sizd of 20px wide by 40px tall.
rect(245, 85, 20, 40);
/* This is the final rectangle for the the eraser holder. We are going to follow the same
pattern as previously mentioned. Notice how the x placement increases by 5 and the width
increases by 10px */
// fill the rectangle with the silver color
fill(silver);
// Make the rectangle placing it at x= 250, y= 85, make it 10px wide and 40px tall.
rect(250, 85, 10, 40); // Eraser holder should have a total of 30px width and 40px height.


// Pencil body.
/* This will follow a different pattern than the previous one. We are going to make three 
rectangles of the same size and place it at different x values on the screen, increasing by 10,
which is also the width of all rectangles. */
// Fill the first rectangle with the color pink1.
fill(pink1);
/* Make a rectangle and place it a x=240, y=100 and give it a height of 300px and a width 
of 10px. */
rect(240, 100, 10, 300);
// Fill the second rectangle with the color pink2.
fill(pink2);
/* Make a rectangle and place it a x=250, y=100 and give it a height of 300px and a width 
of 10px. */
rect(250, 100, 10, 300);
// Fill the last rectangle with the color pink3
fill(pink3);
/* Make a rectangle and place it a x=260, y=100 and give it a height of 300px and a width 
of 10px. */
rect(260, 100, 10, 300); // pencil body should have a total of 30px width and 300px height.


/* Wood tip
We are making the tip following the pattern used on the Ferrule/Eraser Holder. With x placement
increasing by 5 at the first point and decreasing by 5 at the last point. */
// Fill it with with the color wood1.
fill(wood1);
/* Make a triangle with the first point at x1=240, y=400, the second point
at x2=255, y=450 and third point at x3=270, y=400. */
triangle(240, 400, 255, 450, 270, 400);
// Fill the second triangle with the color wood2.
fill(wood2);
/* Make a triangle with the first point at x1=245, y=400, the second point
at x2=255, y=450 and third point at x3=265, y=400. */
triangle(245, 400, 255, 450, 265, 400);
// Fill the last triangle with the color wood3.
fill(wood3);
/* Make a triangle with the first point at x1=250, y=400, the second point
at x2=255, y=450 and third point at x3=260, y=400. */
triangle(250, 400, 255, 450, 260, 400);


// Lead
// Fill the shape with the color lead.
fill(lead);
/* Make a triangle with the first point at x1=251, y=435, the second point
at x2=255, y=455 and third point at x3=259, y=435. */
triangle(251, 435, 255, 455, 259, 435);

}


// pencil is done.
