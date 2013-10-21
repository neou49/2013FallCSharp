using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Linq;

namespace BasicContactsTest
{
    [TestClass]
    public class TodoVMTest
    {
        [TestMethod]
        public void AddTodoReallyAddsAnItem()
        {
            var vm = new WpfBasicContacts.TodoVM();
            Assert.AreEqual(0, vm.List.Count);

            vm.Text = "Test";
            //vm.AddTodo();
            vm.AddCommand.Execute(null);

            Assert.AreEqual(1, vm.List.Count);
            Assert.AreEqual("Test", vm.List.First());
            Assert.IsNull(vm.Text);

        }
    }
}
