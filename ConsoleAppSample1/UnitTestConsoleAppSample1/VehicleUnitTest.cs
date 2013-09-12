using ConsoleAppSample1;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTestConsoleAppSample1
{
    [TestClass]
   public  class VehicleUnitTest
    {
        [TestMethod]
        public void VehicleCanDrive()
        {
            var v = new Vehicle();
            v.Drive();
            Assert.IsTrue(v.Log.Contains("Drove"));

            //v.BreakDown(); // NO parameter

            v.BreakDown("Broke");
            Assert.IsTrue(v.Log.Contains("Broke"));
        }

        [TestMethod]
        public void PlaneCanFly()
        {
            var v = new Plane();
            v.Drive();
            Assert.IsTrue(v.Log.Contains("Drove"));

            //v.BreakDown();    // No Parameter
            //v.BreakDown = () => v.Log += "We are just fine.";    // No parameter
            //v.Log = string.Empty;
            //v.BreakDown();
            //Assert.IsTrue(v.Log.Contains("Fell"));

            v.BreakDown("Engine Failure");
            Assert.IsTrue(v.Log.Contains("Fell"));
           

            v.BreakDown = x => v.Log += "We are just fine.";
            Assert.IsTrue(v.Log.Contains("Fell"));
   
        }

        [TestMethod]
        public void CrashesHurt()
        {
            var v = new Vehicle();
            v.Crash(x => x);
            Assert.IsTrue(v.Log.Contains("1"));

            v.Crash(x => x * 55);
            Assert.IsTrue(v.Log.Contains("55"));
         

        }

        [TestMethod]
        public void VehicleCanTransform()
        {
            var v = new Vehicle();
            Extensions.Transform(v);        // Outside object of Vehicle Class
            Assert.IsTrue(v.Log.Contains("AutoBot"));

            v.TransformVehicle();          // Make it part of the Vehicle Class
            Assert.IsTrue(v.Log.Contains("AutoBot"));

        }
    }
}
