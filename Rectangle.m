classdef Rectangle < Shape & ColorMixin
    properties
        length
        width
    end

    methods
        function obj = Rectangle(length, width, color)
            obj@Shape('Rectangle');
            obj@ColorMixin(color);

            if nargin == 0
                obj.length;
                obj.width;
                obj.area;
            else
                obj.length = length;
                obj.width = width;
                obj.area = obj.CalculateArea();
            end
        end


        function method = CalculateArea(obj)
            method = obj.length * obj.width;

        end

        function Display(obj)
            fprintf('A %s rectangle with length of %d units and width of %d units has an area of approximately %.3f square units\n', obj.color, obj.length, obj.width, obj.area);
        end

        function Draw(obj)
            rectangle('Position',[0 0 obj.width obj.length],'FaceColor',obj.color);
            xlim([-1, obj.width + 1]);
            ylim([-1, obj.length + 1]);
            text(gca, -1, obj.length, {obj.name, "Area: " + obj.area, "Color: " + obj.color, "Length: " + obj.length, "Height: " + obj.width})
            title('Rectangle');
        end

    end
end