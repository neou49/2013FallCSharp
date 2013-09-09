using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestConsoleAppSample1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            int num = 1 + 1;
            Assert.AreEqual(2, num);

            // Not able to test Main() yet
            //ConsoleAppSample1.Program.Main(null);

            var json = ConsoleAppSample1.Program.GetProfile("jewpaltz");
            Assert.IsTrue(json.Contains("Moshe"));
        }
    }
}
