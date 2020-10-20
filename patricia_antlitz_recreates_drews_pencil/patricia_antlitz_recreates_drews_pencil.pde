/* Patricia Antlitz

Discussion for weeks 4 & 5
comment on your wiki pencil algorithm
follow two algorithms form other students

Algorithm chose:
Drew Igoe

I will be following Drew's instructions as written by him, all comments 
below this line are Drew's comments, not mine. My comments will be 
initialized with "PA"

According to Drew's wiki:

Part II



Algorithm for pencil:

1. Plot points (0,0), (0,6), (1,0), (1,6) and connect the lines to form a 
rectangle

- Fill rectangle with color: #d9ab08 (Yellow-Orange)

2. Plot points (0,6), (1,6), (.5,8) to form a triangle

- Fill triangle with color: #fcecb0 (Light Tan)

3. Draw a line segment using points (0,2) (1,2)

- Fill new bottom rectangle with color: #747e8b (Gray)

4. Draw a line segment using points (0,.5) (1,.5)

- Fill new bottom rectangle with color: rgba(236, 111, 226, 1) (Pink)

*/

/* PA - Code Starts Here - Drew did not specify a screen size so I will
be creating a screen 500 wide and 1000 tall */
void setup(){
  size(500, 1000);
}

/* PA - a good thing about this algorithm is that Drew specified the colors
he wanted to use for the design. I will create some variables here to 
store these colors.
those will be yellow = ##d9ab08, which will be represented by its RGB
version 217, 171, 8.
light tan = #fcecb0, RGB 252, 236, 176.
Blue Gray = #747e8b, RGB 116, 126, 139.
pink = rgba(236, 111, 226)
*/
int yellow =  color(217, 171, 8);
int tan = color(252, 236, 176);
int gray = color(116, 126, 139);
int pink = color(236, 111, 226);
// PA - the following color was selected by me as a background color
int white = color(255);

// PA - this function will hold the calls that run the commands 
void draw(){
  // PA- set background with color white
  background(white);
  
/*1. Plot points (0,0), (0,6), (1,0), (1,6) and connect the lines to form 
a rectangle
- Fill rectangle with color: #d9ab08 (Yellow-Orange) 
- PA - here he is using lines to create a rectangle, we are going to 
create the rectangle using the rect function */
  drawRect(yellow, 200, 200, 50, 200);
  
  // 2. Plot points (0,6), (1,6), (.5,8) to form a triangle

// - Fill triangle with color: #fcecb0 (Light Tan)
  drawTriangle(tan, 200, 200, 250, 200, 225, 120);
  
  // 3. Draw a line segment using points (0,2) (1,2)

// - Fill new bottom rectangle with color: #747e8b (Gray)
  drawRect(gray, 200, 400, 50, 100);
  
  
// 4. Draw a line segment using points (0,.5) (1,.5)

// - Fill new bottom rectangle with color: rgba(236, 111, 226, 1) (Pink)
  drawRect(pink, 200, 500, 50, 25);
}

/* PA - Drew's algorithm specified three rectangles of different sizes,
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
