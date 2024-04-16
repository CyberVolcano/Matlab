% this class is used to apply colors to shapes

classdef ColorMixin
    properties
        color
    end

    methods
        function obj = ColorMixin(color)
            if nargin == 0
                obj.color = 'blue'; % default color is set to blue if nothing is specified
            else
                obj.color = color;
            end
        end


        % Getters and setters for colors
        function c = GetColor(obj)
            c = obj.color;
        end

        function obj = SetColor(obj, c)
            obj.color = c;
        end

    end
end