using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Mymath.Triangle;

namespace Mymath.Triangle.Tests
{
    [TestClass()]
    public class TestTriangleClass
    {
        double? s;
        [TestMethod()]
        public void SetAreaTest()
        {            
            Triangle t = new Triangle(4, 5, 6);
            s = t.SetArea();
            Assert.IsNotNull(s);
        }
        [TestMethod()]
        public void SetAreaTest1()
        {
            Triangle t = new Triangle(-4, 5, 6);
            s = t.SetArea();
            Assert.IsNotNull(s);
        }
        [TestMethod()]
        public void SetP()
        {
            Triangle t = new Triangle(7, 9, 10);
            s = t.Set_P();
            Assert.IsNotNull(s);
        }
    }
}

