classdef ColorMixin
    properties
        color
    end

    methods
        function obj = ColorMixin(color)
            if nargin == 0
                obj.color = 'DEFAULT_COLOR';
            else
                obj.color = color;
            end
        end

        function c = GetColor(obj)
            c = obj.color;
        end

        function obj = SetColor(obj, c)
            obj.color = c;
        end

    end
end