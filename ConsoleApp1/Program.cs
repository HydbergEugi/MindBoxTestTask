using System;
using GeometryLibrary;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Circle circle = new Circle(12);
            Triangle triangle = new Triangle(26, 24, 10);


            Console.WriteLine($"Площадь круга - {circle.S}");
            Console.WriteLine($"Площадь треугольника - {triangle.S}");

            if (triangle.IsRightTriangle) Console.WriteLine("Треугольник - прямоугольный");
            else Console.WriteLine("Прямоугольник - не прямоугольный");
        }
    }
}
