﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;



namespace ConsoleAppSample1
{

    public delegate int Multiply(int x, int y);

    public class Program
    {        

        public static void Main(string[] args)
        {
            var db = new DataLayer.ContactModelContainer();
            var keywords = db.Keyword;
            foreach (var k in keywords)
            {
                Console.WriteLine(k.Name);
                Console.WriteLine("{0} - {1}", k.Parent.Name, k.Name);
            }
            Console.ReadLine();

            Console.WriteLine("Enter a contact in the following format (FirstName LastName Phone");
            var results = Console.ReadLine();
            var value = results.Split();
            var contact = new DataLayer.Contact{ FirsName = values[0], LastName = values[1], KeywordId = values[3]};
            db.Contacts.Add(contact);

            contact.ContactMethods.add(new DataLayer.ContactMethod) { KeyworkID = 8, value
            db.SaveChanges();










            //Console.WriteLine("Hello World");
            //Console.WriteLine("What is your username?");
            //string response = Console.ReadLine();

            ////var httpClient = new HttpClient();
            ////var json = httpClient.GetStringAsync("http://graph.facebook.com/" + response).Result;

            //Console.WriteLine("Here's your profile info");
            ////Console.Write(json);
            //Console.Write(GetProfile(response));

            LinqSample();


            Console.ReadLine();            

            
        }

        public static string GetProfile(string username)
        {
            var httpClient = new HttpClient();

            var json = httpClient.GetStringAsync("http://graph.facebook.com/" + username).Result;

            return json;
        }


        // Sample Assignment 1
        #region "Sample Assignment 1"
        public static void LinqSample()
        {
            IEnumerable<string> personNames = new [] { "asd", "asdfasdas", "asdd2323" };

            // Create a list of string
            var personList = personNames.Select(x => x).ToList();
            
            foreach (var person in personList)
            {
                //Console.WriteLine(person);
            }

            Console.WriteLine("\n\n///////////////////////////////////////////////");

            // Create a list of Persons Class with "name" Property
            var personList1 = personNames.Select(x => new Persons { name = x });

            var personList2 = personNames.Where(x => x.Length > 3).Select(x => x);

            foreach (var person in personList2)
            {
                //Console.WriteLine(person.name);
                Console.WriteLine(person);
            }

        }
        #endregion


    }
}

public class Persons
{
    public string name { get; set; }
}

