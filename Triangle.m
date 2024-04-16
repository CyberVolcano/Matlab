classdef Triangle < Shape & ColorMixin
    properties
        base 
        height
    end

    methods
        function obj = Triangle(base, height, color)
            obj@Shape('Triangle');
            obj@ColorMixin(color);
            if nargin == 0
                obj.base;
                obj.height;
                obj.area;

            else
                obj.base = base;
                obj.height = height;
                obj.area = obj.CalculateArea();
            end
        end

        function method = CalculateArea(obj)
            method = obj.base * obj.height * 0.5;
        end

        function Display(obj)
            fprintf('A %s triangle with base of %d units and height of %d units has an area of approximately %.3f square units\n', obj.color, obj.base, obj.height, obj.area);
        end

        function Draw(obj)
            origin = [0, 0];
            pointAwayFromBase = [obj.base, 0];
            peak = [obj.base/2, obj.height];

            hold on; % we use hold to apply multiply multiple lines on the graph
            plot([origin(1), pointAwayFromBase(1)], [origin(2), pointAwayFromBase(2)], obj.color);
            plot([pointAwayFromBase(1), peak(1)], [pointAwayFromBase(2), peak(2)], obj.color);
            plot([peak(1), origin(1)], [peak(2), origin(2)], obj.color);
            hold off; 

            fill([origin(1), pointAwayFromBase(1), peak(1)], ...
     [origin(2), pointAwayFromBase(2), peak(2)], obj.color);

            text(gca, -1, obj.height, {obj.name, "Area: " + obj.area, "Color: " + obj.color,"Base: " + obj.base, "Height: " + obj.height})
            title('Triangle');
            xlim([-1, obj.base + 1]); % we want our margins to be just 1 unit larger than the dimensions
            ylim([-1, obj.height + 1]);

        end

    end

end