classdef EquilateralTriangle < Triangle & ColorMixin
    properties 
        sideLength
    end

    methods
        function obj = EquilateralTriangle(sideLength, color)
            obj@Triangle(sideLength, ((sideLength * sqrt(3))/2) , color);
            obj.name = 'Equilateral Triangle';

            if nargin==0
                obj.sideLength;
            else
                obj.sideLength = sideLength;
            end
        end

        function Display(obj)
            fprintf('Area of the %s %s with side length of %d units is approximately %.3f square units\n', obj.color, obj.name, obj.sideLength, obj.area);
        end

        function Draw(obj)
            origin = [0, 0];
            pointAwayFromBase = [obj.base, 0];
            peak = [obj.base/2, obj.height];

            hold on;
            plot([origin(1), pointAwayFromBase(1)], [origin(2), pointAwayFromBase(2)], obj.color);
            plot([pointAwayFromBase(1), peak(1)], [pointAwayFromBase(2), peak(2)], obj.color);
            plot([peak(1), origin(1)], [peak(2), origin(2)], obj.color);
            hold off; 

            fill([origin(1), pointAwayFromBase(1), peak(1)], ...
     [origin(2), pointAwayFromBase(2), peak(2)], obj.color);

            xlim([-1, obj.base + 1]);
            ylim([-1, obj.height + 1]);
            text(gca, -1, obj.sideLength, {obj.name, "Area: " + obj.area, "Color: " + obj.color, "Side Length: " + obj.base})
            title('Equilateral Triangle');

        end

    end

end