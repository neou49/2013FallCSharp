using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinqExerciseAssignment1
{
    public class Program
    {


        IEnumerable<string> _names = new[] { "Bessie", "Vashti", "Frederica", "Nisha", "Kendall", "Magdalena", "Brendon", "Eve", "Manda", "Elvera", "Miquel", "Tyra", "Lucie", "Marvella", "Tracee", "Ramiro", "Irene", "Davina", "Jeromy", "Siu" };

        public static void Main(string[] args)
        {
            Program program = new Program();
            program.LinqExcercise();
            Console.In.ReadLine();
        }

        public void LinqExcercise()
        {
            StringBuilder strBuilder = new StringBuilder();
            var personList = _names.Select(x => new Person { Name = x });

            strBuilder.Append("1. Create A list of Persons, each with one of the names.\n");
            foreach (var person in personList)
            {
                strBuilder.Append(person.Name + "\n");
            }

            strBuilder.Append("\n");
            strBuilder.Append("2. Create the same list then get a subset with only people whose name start with \"M\"\n");
            var personSubset = _names.Where(x => x.Substring(0,1).Equals("M"))
                                    .Select(x => new Person { Name = x });
            foreach (var person in personSubset)
            {
                strBuilder.Append(person.Name + "\n");
            }

            strBuilder.Append("\n");
            strBuilder.Append("3. Create the same list then get a list everyone's names in uppercase\n");
            var personNameUpperCase = _names.Select(x => new Person { Name = x.ToUpper() });
            foreach (var person in personNameUpperCase)
            {
                strBuilder.Append(person.Name + "\n");
            }

            strBuilder.Append("\n");
            strBuilder.Append("4. Create the same list then get an array of int with the length of each name\n");
            var personNameLengthArray = _names.Select(x => x.Length).ToArray();
            foreach (var length in personNameLengthArray)
            {
                strBuilder.Append(length + "\n");
            }

            strBuilder.Append("\n");
            strBuilder.Append("5. Create the same list then get a list with only the name shortened to the first three letters ordered by name\n");
            var personNameFirstThreeLetters = _names.Select(x => new Person { Name = x.Substring(0, 3) })
                                                    .OrderBy(x => x.Name);
            foreach (var person in personNameFirstThreeLetters)
            {
                strBuilder.Append(person.Name + "\n");
            }
            Console.Out.WriteLine(strBuilder);
        }
    }
}
