% this shape class is used to build the other shapes and is the boilerplate
% code for them 

classdef Shape < matlab.mixin.Heterogeneous
    properties
        name
        area
    end

    methods

        function obj = Shape(inpName) % if no arguments are passed leave default
            if nargin == 0
                obj.name;
                obj.area;
            else
                obj.name = inpName; % if arguments are passed set them
                obj.area;
            end

        end

        function Display(obj)
            fprintf('Name: %s\nArea: %d\n', obj.name, obj.area);
        end

    end

    methods(Static)         % Statistics
        function CalculateStatistics(array)
            areaArr = [array.area];
            areaMean = mean(areaArr);

            fprintf('Mean area: %.3f\n', areaMean);
            fprintf('Median of areas: %.3f\n', (median(areaArr)));
            fprintf('Standard Deviation of areas: %.3f\n', (std(areaArr)));
        end

    end

end