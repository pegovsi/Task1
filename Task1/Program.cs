using Mymath.Triangle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Task1
{
    class Program
    {        
        static double a = 0;
        static double b = 0;
        static double c = 0;

        static void Main(string[] args)
        {

            /*получим все стороны треуголника.
            Пока некорректные значения будем просить пользователя ввести данные*/

            do
            {
                Console.WriteLine("Введите длину отрезка A=");                
            } while (!double.TryParse(Console.ReadLine(), out a));

            do
            {
                Console.WriteLine("Введите длину отрезка B=");
            } while (!double.TryParse(Console.ReadLine(), out b));

            do
            {
                Console.WriteLine("Введите длину отрезка C=");
            } while (!double.TryParse(Console.ReadLine(), out c));

            if (a <= 0 || b <= 0 || c <= 0) 
            {
                Console.WriteLine("Некорректные значения! ");
                Console.ReadKey();
            }
            else
            {

                Triangle triangle = new Triangle(a, b, c);

                triangle.SetArea();

                if (triangle.s == 0)
                    Console.WriteLine("Такого треугольника не существует!");

                Console.WriteLine($"Площадь треугольника = {Math.Round(triangle.s, 2)}");

                Console.ReadKey();
            }

        }
    }
}
