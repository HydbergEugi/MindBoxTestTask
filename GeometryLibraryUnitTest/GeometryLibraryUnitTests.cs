using Microsoft.VisualStudio.TestTools.UnitTesting;
using GeometryLibrary;
using System;

namespace GeometryLibraryUnitTest
{
    [TestClass]
    public class GeometryLibraryUnitTests
    {
        [TestMethod]
        public void CircleArea_R12_452dot389returned()
        {
            //Входной радиус
            double R = 12;
            //Ожидаемая площадь
            double expected = 452.389;

            Circle circle = new Circle(R);
            double actual = Math.Round(circle.S, 3);

            Assert.AreEqual(expected, actual);

        }

        [TestMethod]
        public void TriangleArea_3and4and6_5dot333returned()
        {
            //Три стороны треугольника
            double a = 3;
            double b = 4;
            double c = 6;
            //Ожидаемая площадь 
            double expected = 5.333;

            Triangle triangle = new Triangle(a, b, c);
            double actual = Math.Round(triangle.S, 3);

            Assert.AreEqual(expected, actual);

        }

        [TestMethod]
        public void TriangleIsRight_3and4and5_true_returned()
        {
            //Три стороны треугольника
            double a = 3;
            double b = 4;
            double c = 5;

            bool expected = true;

            Triangle triangle = new Triangle(3, 4, 5);
            bool actual = triangle.IsRightTriangle;

            Assert.AreEqual(expected, actual);
        }
    }
}
