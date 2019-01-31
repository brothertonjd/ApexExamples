public with sharing class ApexBasics1 {
////////////////////////////////////////////////////////////////////////
//
//	HelloWorld
//	Created on: 01/17/2019
//	Author: Harvney Hill
//	Description: Simple class to output 'Hello World' as a system.debug
//	line as an example of Apex code.
//
////////////////////////////////////////////////////////////////////////
    class HelloWorld {
    
        //Default constructor
        //This constructor takes no arguments, and creates a system.debug
        //output of 'hello world' in the log.
        public HelloWorld(){
            //This generates a line in the log saying hello world.
            system.debug('Hello World');
            system.debug('Hello Again!');
        }
    }
//
//	HelloWorld2
//	Created on: 01/17/2019
//	Author: Harvey Hill
//	Description: Simple class to output the 'helloWorld' variable as a system.debug
//	line as an example of Apex code.
//
////////////////////////////////////////////////////////////////////////
    class HelloWorld2 {
        private string helloWorld = 'World';
        //Default constructor
        //This constructor takes no arguments, and creates a system.debug
        //output of hello + helloWorld in the log.
        public HelloWorld(){
            //This generates a line in the log saying hello and whatever 
            //is stored in the helloWorld variable.
            system.debug('Hello ' + helloWorld);
        }

    }
////////////////////////////////////////////////////////////////////////
//
//	HelloWorld3
//	Created on: 01/17/2019
//	Author: Harvey Hill
//	Description: Simple class to output the 'helloWorld' variable as a system.debug
//	line as an example of Apex code, now utilizing methods.
//
////////////////////////////////////////////////////////////////////////
    class HelloWorld3 {
        private string helloWorld = 'World';
        //Default constructor
        //This constructor takes no arguments, and creates a system.debug
        //output of hello + helloWorld in the log.
        public HelloWorld(){
            //This now calls the method that generates a line in the log 
            //saying hello and whatever is stored in the helloWorld variable.
            sayHello();
        }
        
        //This method has a parameter called s, which accepts a string argument.
        public void setHelloWorld(string s){
            //Here we take the value in 's', and assign it to the helloWorld variable.
            helloWorld = s;
        }
        
        //This method can be called to mirror what we did previously in the 
        //constructor, and rather than doubling up on this, you can see we
        //have changed the constructor.
        public void sayHello(){
            system.debug('Hello ' + helloWorld);
        }
        

    }
////////////////////////////////////////////////////////////////////////
//
//	HelloWorld4
//	Created on: 01/17/2019
//	Author: Harvey Hill
//	Description: Simple class to output the 'helloWorld' variable as a system.debug
//	line as an example of Apex code, now utilizing methods, and collections.
//
////////////////////////////////////////////////////////////////////////
    class HelloWorld4 {
        private string helloWorld = 'World';
        
        //Collections
        //List - We declare this is a list of strings called helloList, 
        //and we assign it a value to start.
        private List<String> helloList = new List<String>{'Konnichiwa'};
        //Set - We declare this is a set of strings called helloSet,
        //and we assign it a value to start.
        private Set<String> helloSet = new Set<String>{'Japan'};
        //Map - We declare this is a map of string key value pairs.,
        //and assign it a key value pair to start.
        Map<String, String> helloMap = new Map<String, String>{'Japan' => 'Konnichiwa'};


        
        
        //Default constructor
        //This constructor takes no arguments, and creates a system.debug
        //output of hello + helloWorld in the log.
        public HelloWorld(){
            //This now calls the method that generates a line in the log 
            //saying hello and whatever is stored in the helloWorld variable.
            sayHello();
            
            //We add two new values to our helloList using the add method.
            helloList.add('Bonjour');
            helloList.add('Hola');
            
            //We add two new values to the helloSet using the add method.
            helloSet.add('France');
            helloSet.add('Spain');
            
            //We add two new key-value pairs to the helloMap using the put method.
            helloMap.put('France', 'Bonjour');
            helloMap.put('Spain', 'Hola');
        }
        
        //This method has a parameter called s, which accepts a string argument.
        public void setHelloWorld(string s){
            //Here we take the value in 's', and assign it to the helloWorld variable.
            helloWorld = s;
        }
        
        //This method can be called to mirror what we did previously in the 
        //constructor, and rather than doubling up on this, you can see we
        //have changed the constructor.
        public void sayHello(){
            system.debug('Hello ' + helloWorld);
            system.debug(helloList);
            system.debug(helloSet);
            system.debug(helloMap);
        }
    

    }
////////////////////////////////////////////////////////////////////////
//
//	HelloWorld5
//	Created on: 01/18/2019
//	Author: Harvey Hill
//	Description: Simple class to output the 'helloWorld' variable as a 
//	system.debug line as an example of Apex code, now utilizing methods, 
//  collections, and control flow statements.
//
////////////////////////////////////////////////////////////////////////
    class HelloWorld5 {
        private string helloWorld = 'World';
        
        //Collections
        //List - We declare this is a list of strings called helloList, 
        //and we assign it a value to start.
        private List<String> helloList = new List<String>{'Konnichiwa'};
        //Set - We declare this is a set of strings called helloSet,
        //and we assign it a value to start.
        private Set<String> helloSet = new Set<String>{'Japan'};
        //Map - We declare this is a map of string key value pairs.,
        //and assign it a key value pair to start.
        Map<String, String> helloMap = new Map<String, String>{'Japan' => 'Konnichiwa'};

        //The version of hello we are going to use.
        private string hello = 'Hello';
        //Nation that uses that hello.
        private string helloNationality = 'USA';
        
        
        //Default constructor
        //This constructor takes no arguments, and creates a system.debug
        //output of hello + helloWorld in the log.
        public HelloWorld(){
            //This now calls the method that generates a line in the log 
            //saying hello and whatever is stored in the helloWorld variable.
            sayHello();
            
            //We add two new values to our helloList using the add method.
            helloList.add('Bonjour');
            helloList.add('Hola');
            
            //We add two new values to the helloSet using the add method.
            helloSet.add('France');
            helloSet.add('Spain');
            
            //We add two new key-value pairs to the helloMap using the put method.
            helloMap.put('France', 'Bonjour');
            helloMap.put('Spain', 'Hola');
            
            //
        }
        
        //This method has a parameter called s, which accepts a string argument.
        public void setHelloWorld(string s){
            //Here we take the value in 's', and assign it to the helloWorld variable.
            helloWorld = s;
        }
        
        //This method can be called to mirror what we did previously in the 
        //constructor, and rather than doubling up on this, you can see we
        //have changed the constructor.
        public void sayHello(){
            system.debug(hello + ' ' + helloWorld);
            system.debug(helloList);
            system.debug(helloSet);
            system.debug(helloMap);
        }
        
        //While Loop
        //The while loop continues so long as the parameter is true.
        //So long as i is less than 5, keep doing it. 
        public void countWhileLoop(){
            integer i = 0;
            while(i < 5){
                system.debug('The loop goes: ' + i);
                i++;
            }
        }
        
        //Do While Loop
        //The do while loop is identical to the while loop except 
        //it will always execute at least once.
        public void countDoWhileLoop(integer inty){
            integer i = inty;
            do{
                system.debug('The loop goes: ' + i);
                i++;
            }while(i < 5);
        }
        
        //Switch
        //The switch checks if the expression, 
        //the hello variable below, 
        //matches one of several branches and executes 
        //the corresponding code.
        public void switchMethod(){
            switch on hello{
                when 'Hello'{
                    helloNationality = 'USA';
                    system.debug('Greeting: ' + hello);
                    system.debug('Nation: ' + helloNationality);
                    hello = 'Konnichiwa';
                }
                when 'Konnichiwa'{
                    helloNationality = 'Japan';
                    system.debug('Greeting: ' + hello);
                    system.debug('Nation: ' + helloNationality);
                    hello = 'Hola';
                }
                when 'Hola'{
                    helloNationality = 'Spain';
                    system.debug('Greeting: ' + hello);
                    system.debug('Nation: ' + helloNationality);
                    hello = 'Bonjour';
                }
                when 'Bonjour'{
                    helloNationality = 'France';
                    system.debug('Greeting: ' + hello);
                    system.debug('Nation: ' + helloNationality);
                    hello = 'Hello';
                } when else {
                    system.debug('Unknown Greeting');
                    hello = 'Hello';
                }
            }
        }
        
        //For loop
        //for as long as i is less than the size of the list
        //we keep going, incrementing by 1 every time.
        //Once i is greater tan or equal to the size of the list, 
        //the loop ends
        public void checkList(string hello){
            for(integer i = 0; i < helloList.size(); i++){
                if(helloList[i] == hello){
                    system.debug('We found a match!');
                }else{
                    system.debug('No match this time boss!');
                }
            }
        }
        
        //For-each loop
        //Similar to above, but this loop is a little smarter
        //when dealing with collections. For each entry in a list 
        //or set, it executes the code. 
        public void checkList2(string hello){
            for(string s : helloList){
                if(s == hello){
                    system.debug('We found a match!');
                }else{
                    system.debug('No match this time boss!');
                }
            }
        }
        
        //This method takes an argument of a country, if that country exists
        //in the set, set the hello variable equal to the key-value pair value
        //where the key is the country. Then say hello. 
        public void internationalHello(string country){
            if(helloSet.contains(country)){
                hello = helloMap.get(country);
                sayHello();
            }else{
                system.debug('Supplied country not in map.');
            }
        }
        
        
    }
}
