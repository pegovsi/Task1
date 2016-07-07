using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mymath.Triangle
{
    public class Triangle : ITriangleGeron
    {
        public double a { get; set; } = 0;
        public double b { get; set; } = 0;
        public double c { get; set; } = 0;
        public double p { get; private set; } = 0; //полупериметр
        public double s { get; private set; } = 0; // площадь

        public Triangle()
        {

        }

        public Triangle(double a, double b, double c)
        {
            this.a = a;
            this.b = b;
            this.c = c;
        }


        public double Set_P() => (a + b + c) / 2;

        public double SetArea()
        {
            p = Set_P();
            s = Math.Sqrt(p * (p - a) * (p - b) * (p - c));
            return s;
        }
        
    }
}
