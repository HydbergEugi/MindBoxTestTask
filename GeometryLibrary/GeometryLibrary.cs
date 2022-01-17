using System;

namespace GeometryLibrary
{
    /// <summary>
    /// Представляет собой геометрическую фигуру
    /// </summary>
    public abstract class GeometryFigure 
    {
        //Константа - число Пи
        private const double _PI = 3.1415926535;
        protected double PI
        {
            get => _PI;
        }

        private const double s = 0;
        /// <summary>
        /// Площадь фигуры
        /// </summary>
        public virtual double S 
        {
            get => s;
        } 
    }

    /// <summary>
    /// Представляет собой геометрическую фигуру Круг
    /// </summary>
    public class Circle : GeometryFigure
    {
        /// <summary>
        /// Конструктор класса
        /// </summary>
        /// <param name="r">Радиус круга</param>
        public Circle(double r)
        {
            R = r;
        }

        private double _R;
        /// <summary>
        /// Радиус круга
        /// </summary>
        public double R
        {
            get => _R;
            set
            {
                _R = value;
            }
        }


        public override double S
        {
            get
            {
                return PI*R*R;
            }
        }
    }

    /// <summary>
    /// Представляет собой геометрическую фигуру Треугольник
    /// </summary>
    public class Triangle : GeometryFigure
    {
        private double _a;
        /// <summary>
        /// Сторона a
        /// </summary>
        public double a
        {
            get => _a;
            set { _a = value; }
        }

        
        private double _b;
        /// <summary>
        /// Сторона b
        /// </summary>
        public double b
        {
            get => _b;
            set { _b = value; }
        }

        
        private double _c;
        /// <summary>
        /// Сторона c
        /// </summary>
        public double c
        {
            get => _c;
            set { _c = value; }
        }

        /// <summary>
        /// Конструктор класса фигуры Треугольник
        /// </summary>
        /// <param name="a">Сторона a</param>
        /// <param name="b">Сторона b</param>
        /// <param name="c">Сторона c</param>
        public Triangle(double a, double b, double c)
        {
            this.a = a;
            this.b = b;
            this.c = c;
        }

        public override double S
        {
            get
            {
                //полупериметр
                double p = (this.a + this.b + this.c) * 0.5;

                double result = Math.Sqrt(p * (p - a) * (p - b) * (p - c));

                if (Double.IsNaN(result))
                {
                    Console.WriteLine($"Треугольника со сторонами {this.a}, {this.b}, {this.c} не существует");
                    return -1;
                }
                else
                    return result;
                
                
            }
        }

        /// <summary>
        /// Значение true, если треугольник прямоугольный. Значение false, если треугольник не прямоугольный
        /// </summary>
        public bool IsRightTriangle
        {
            get
            {
                if (this.a * this.a == this.b * this.b + this.c * this.c) return true;
                if (this.b * this.b == this.a * this.a + this.c * this.c) return true;
                if (this.c * this.c == this.b * this.b + this.a * this.a) return true;
                return false;
            }
        }
    }
}
