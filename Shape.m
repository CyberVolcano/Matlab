classdef Shape < matlab.mixin.Heterogeneous
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        name
        area
    end

    methods

        function obj = Shape(inpName)
            if nargin == 0
                obj.name;
                obj.area;
            else
                obj.name = inpName;
                obj.area;
            end

        end

        function Display(obj)
            fprintf('Name: %s\nArea: %d\n', obj.name, obj.area);
        end

    end

    methods(Static)
        function CalculateStatistics(array)
            areaArr = [array.area];
            areaMean = mean(areaArr);

            fprintf('Mean area: %.3f\n', areaMean);
            fprintf('Median of areas: %.3f\n', (median(areaArr)));
            fprintf('Standard Deviation of areas: %.3f\n', (std(areaArr)));
        end

    end

end