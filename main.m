clc
clear

prompt = "Welcome to the Shape Visualizer, Enter: " + ...
    "Rectangle, " + ...
    "Circle, " + ...
    "Square, " + ...
    "Triangle ";

userInput = input(prompt ,"s");

switch userInput
    case "Rectangle"
        disp('Rectangle Selected!')
        rectLength = input("What is the length of the rectangle?");
        rectWidth = input("What is the width of the rectangle?");
        rectColor = input("What is the color of the rectangle?");
        rect = Rectangle(rectLength, rectWidth, rectColor);
        rect.Draw()
    case "Circle"
        disp('Circle Selected!')
        radius = input("What is the radius of the circle?");
        color = input("What is the color of the circle?");
        circle = Circle(radius, color);
        circle.Draw()
    case "Square"
        disp('Square Selected!')
        squareLengthWidth = input("What is the length and width of the square?");
        squareColor = input("What is the color of the square?");
        square = Square(squareLengthWidth, squareColor);
        square.Draw()
    case "Triangle"
        disp('Triangle Selected!')
        triangleBase = input("What is the of base the triangle?");
        triangleHeight = input("What is the height of the triangle?");
        triangleColor = input("What is the color of the triangle?");
        triangle = Triangle(triangleBase, triangleHeight, triangleColor);
        triangle.Draw()
    otherwise
        disp('Error! Invalid Input');
end