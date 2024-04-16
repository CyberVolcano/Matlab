classdef Square < Rectangle & ColorMixin
    properties
        sideLength
    end

    methods
        function obj = Square(sideLength, color)
            obj@Rectangle(sideLength, sideLength, color);
            obj.name = 'Square';

            if nargin == 0
                obj.sideLength;
            else
                obj.sideLength = sideLength;
            end
        end

        function Display(obj)
            fprintf('The area of the %s %s with a side length of %d units approximately %.3f square units\n', obj.color, obj.name, obj.sideLength, obj.area);
        end

        function Draw(obj)
            rectangle('Position',[0 0 obj.sideLength obj.sideLength],'FaceColor',obj.color);

            title('Square');
            text(gca, -1, obj.length, {obj.name, "Area: " + obj.area, "Color: " + obj.color, "Length: " + obj.length})
            xlim([-1, obj.sideLength + 1]);
            ylim([-1, obj.sideLength + 1]);
        end

    end

end