/* Patricia Antlitz

Discussion for weeks 4 & 5
comment on your wiki pencil algorithm
follow two algorithms form other students

Algorithm chose:
Kailey Johnson

I will be following Kailey's instructions as written by her, all comments 
below this line are Keiley's comments, not mine. My comments will be 
initialized with "PA"

According to Kailey's wiki:

Pt. 2

  - PA - this is the part that is not very useful for coding on Processing,
  so I will comment it out.

Draw a Pencil 

(Note: I did not have colored pencils on me, but I labeled the different 
segments of my drawing with the correct colors.)

 

What you will need:

One pen

Five colored pencils or markers in the following colors: pink # ff99cc, 
grey # cccccc, yellow # ffcc00, light brown # e6ccb3, black # 000000

One piece of graph paper, width: 28 units, height: 38 units

*/


// PA - code starts here

/* PA - algorithm does not have an instruction for creating a screen. I will
do that 
 - create a screen sized 1000px by 800px and wrap it with a setup function
*/

void setup() {
  size(1000, 500);
}

/* PA - Kailey has many colors specified on her algorithm, I will place them
into variables below to faciliate their calling */

// PA - color for a "rectangle" set as #cccccc "gray", will use RGB 204
int gray = color(204);
// PA - color for another "rectangle" set as #ffcc00 "yellow". Will use 255, 204, 0
int yellow = color(255, 204, 0);
// PA = color for another rectangle set as #ff99cc "pink", using 255, 153, 204
int pink = color(255, 153, 204);
// PA - color for the triangle set as #000000, will use RGB 0
int black = color(0);
// PA - this color was picked by me as the background color
int screen = color(255);

  
/* PA - function draw will hold the commands to run the other functions in
this program */

void draw(){
  // PA - lets give the page a background color using variable screen
  background(screen);
  
  /* Draw a Rectangle 

Input: place pen at (2,7); move pen 1 unit right, 1 unit up, 1 unit left, 
1 unit down; CHOOSE COLOR # ff99cc.

Output: a rectangle with width 1 unit and height 1 unit at a specific 
location with a specific color.

Description: The user draws a rectangle with the specified width and height. 
The chosen color is specified with CHOOSE COLOR.
*/ 
/* PA - Kailey says (2,7) placing it at 200 and 600 would make the screen
too big in pixels, will translate this cutting by half */
  drawRect(pink, 100, 300, 50, 50);
  
/* Draw a Rectangle

Input: place pen at (3,7); move pen 2 units right, 1 unit up, 2 units left; 
CHOOSE COLOR # cccccc

Output: a rectangle with width 2 units and height 1 unit at a specific 
location with a specific color.

Description: The user draws a rectangle with the specified width and height. 
The chosen color is specified with CHOOSE COLOR. */
  drawRect(gray, 150, 300, 100, 50);
  
/*Draw a Rectangle

Input: place pen at (5,7); move pen 13 units right, 1 unit up, 13 units left; 
CHOOSE COLOR # ffcc00.

Output: a rectangle with width 13 units and height 1 unit at a specific 
location with a specific color.

Description: The user draws a rectangle with the specified width and height. 
The chosen color is specified with CHOOSE COLOR. */
  drawRect(yellow, 250, 300, 600, 50);


/*Draw a Triangle

Input: place pen at (18,7); move pen diagonally up and right to (20, 7.5), 
move pen diagonally up and left to (18,8); fill in left half of triangle 
from x=18 to x=19 FILL COLOR #e6ccb3; fill in right half of triangle from 
x=19 to x=20 FILL COLOR # 000000

Output: a triangle with width 2 units and height 1 unit at a specific 
location, divided between right and left by two colors.

Description: The user draws a triangle with the specified width and height. 
The chosen colors are specified with CHOOSE COLOR. */
  drawTriangle(black, 850, 300, 950, 325, 850, 350);

}

/* PA - Kailey's algorithm specified three rectangles of different sizes,
I will create one function to create all three rectangles. This function will
pass 5 arguments as parameters, "c" for color, x for the x position on the 
screen, y for the y position on the screen, wide for the width and
tall for the height */

void drawRect(int c, float x, float y, float wide, float tall){
  fill(c);
  rect(x, y, wide, tall);
}

/* PA - I will create one function to create the triangle. This function will
pass 7 arguments as parameters, "c" for color, x 1, 2, and 3 for the x position
on the screen, y 1, 2, and 3for the y position on the screen, wide for the 
width and tall for the height */
void drawTriangle(int c, float x1, float y1, float x2, float y2, float x3,
float y3){
  fill(c);
  triangle(x1, y1, x2, y2, x3, y3);
}
