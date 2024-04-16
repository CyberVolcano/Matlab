classdef Circle < Shape & ColorMixin
    properties
        radius
    end

    methods
        function obj = Circle(radius, color)
            obj@Shape('Circle');
            obj@ColorMixin(color);
            if nargin == 0
                obj.radius;
            else
                obj.radius = radius;
                obj.area = obj.CalculateArea();
            end
        end

        function method = CalculateArea(obj)
            method = pi * obj.radius^2;
        end

        function Draw(obj)
            diameter = obj.radius*2;
            rectangle('Position',[obj.radius -(obj.radius) diameter diameter],'Curvature',[1,1],'FaceColor',obj.GetColor);
            daspect([1,1,1])

            xlim([0-diameter, diameter*2]);
            ylim([0-diameter, diameter*2]);
            title('Circle');
            text(gca, -1, diameter, {obj.name, "Area: " + obj.area, "Color: " + obj.color, "Radius: " + obj.radius})
        end

        function Display(obj)
            fprintf('The area of a %s circle with a radius of %d units is approximately %.3f square units\n', obj.color, obj.radius, obj.area);
        end

    end
end