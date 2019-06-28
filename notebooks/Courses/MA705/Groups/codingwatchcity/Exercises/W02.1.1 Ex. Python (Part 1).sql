-- Databricks notebook source
-- MAGIC %md # Week 2 - Exercises - Python Essentials (Part 1) [codingwatchcity]

-- COMMAND ----------

-- MAGIC %md ## Contents
-- MAGIC 1. Data lab notebooks
-- MAGIC 1. Lists
-- MAGIC 1. Dictionaries
-- MAGIC 1. Comprehensions
-- MAGIC 1. Map & filter 
-- MAGIC 1. Methods
-- MAGIC 1. JSON

-- COMMAND ----------

-- MAGIC %md ## Data lab notebooks

-- COMMAND ----------

-- MAGIC %md In the [/Data Lab notebooks/Python/Essentials/Contents](https://bentley.cloud.databricks.com/#notebook/189051)
-- MAGIC notebook you will find links to the remaining notebooks in the _Python Essentials_ folder.
-- MAGIC 
-- MAGIC Please work through and understand __all of the notebooks__ linked to from the above Contents notebook.
-- MAGIC We will work through some of these notebooks during class.
-- MAGIC 
-- MAGIC Complete the exercises in this notebook. 
-- MAGIC All of the code in this notebook and in the notebooks linked to from the above Contents notebook may be asked about in the interviews. 

-- COMMAND ----------

-- MAGIC %md ## Lists

-- COMMAND ----------

-- MAGIC %md __Exercise 1:__ 
-- MAGIC 1. Create a list that contains all integers greater than or equal to `1` and (strictly) less than `1000000`. Store this list in a varable. Do not display this list.
-- MAGIC 1. Display the last ten elements of this list 

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - The **range()** function generates the integer numbers between the given start integer to the stop integer,in this case from `1` to `999999`. 
-- MAGIC - The **list()** function converts numbers to a list. This result is stored in variable `A`.    
-- MAGIC - ``A[-10:]`` use the **index** to select the last ten elements of the list. 
-- MAGIC - The **print()** function displays the list.
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A list contains integer from 999990 to 999999.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC A=list(range(1,1000000))
-- MAGIC print(A[-10:])

-- COMMAND ----------

-- MAGIC %md __Exercise 2:__ Store a list in variable `b` below so that the cell returns `True`.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**   
-- MAGIC 1) Code:
-- MAGIC - The **+** (one of the list operators) in python list means to paste the content of multiple lists to a single list. 
-- MAGIC - In order to returns **True**, the left side of **==** should be the same as the right side. Therefore, `b` should contain the elements of ``2,'b'``
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - ['a',1] + b == ['a',1,2,'b'] returns true.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC b=[2,'b']
-- MAGIC ['a',1] + b == ['a',1,2,'b']

-- COMMAND ----------

-- MAGIC %md __Exercise 3:__ Store a list in variable `c` below so that the cell returns `True`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Question
-- MAGIC c = []
-- MAGIC 3 * c == [[1,2],[1,2],[1,2]]

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation**:
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - In order to returns **True**, the left side of **==** should be the same as the right side. 
-- MAGIC - Multiplying a list `c` by a integer scalar `3`  using ** * ** returns the 3 copies of the list as a result.
-- MAGIC - We know the result and integer scalar, so we can infer the element of the list `c`,which is `[1,2]`.
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - `c` is a list including one element, which is also a list.
-- MAGIC - 3 * c == [[1,2],[1,2],[1,2]] returns true.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Answer
-- MAGIC c = [1,2]
-- MAGIC 3 * c == [[1,2],[1,2],[1,2]]

-- COMMAND ----------

-- MAGIC %md __Exercise 4:__ Store a list in variable `d` below so that the cell returns `True`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Question
-- MAGIC d = []
-- MAGIC d[1:4] == [4,'x',True]

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation：**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - The right side of operator **==** indicates the second, thrid, and forth elements of the list `d` equal to `4,'x','True'`. 
-- MAGIC - To return `True`, the list `d` should include **4,'x',True** at index `1,2,3`
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - d[1:4] == [4,'x',True] returns true

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Question
-- MAGIC d = [9,4,'x',True,6]
-- MAGIC d[1:4] == [4,'x',True]

-- COMMAND ----------

-- MAGIC %md ## Dictionaries

-- COMMAND ----------

-- MAGIC %md __Exercise 5:__ create a dictionary with three keys, `a`, `b`, and `c`. The values should be `11`, `22`, and `33` (respectively).

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - Dictionaries are collections of _key_-_value_ pairs, which are `'a':11,'b':22,'c':33` in this case, separated by commas and enclosed in braces. 
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A dictionary with key-value pairs of `'a':11,'b':22,'c':33`

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dic={'a':11,
-- MAGIC      'b':22,
-- MAGIC      'c':33}
-- MAGIC print(dic)

-- COMMAND ----------

-- MAGIC %md The following code cell creates a dictionary and stores it in variable `europe_cities`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Question
-- MAGIC europe_cities = {'spain'  :['madrid', 'barcelona', 'seville', 'valencia'], 
-- MAGIC                  'france' :['paris', 'marseille', 'bordeaux'], 
-- MAGIC                  'germany':['berlin', 'munich'], 
-- MAGIC                  'norway' :['oslo'] }

-- COMMAND ----------

-- MAGIC %md __Exercise 6:__ retrieve the third city in the list of cities in Spain. Do so with a single command. Do not store temporary results in a variable.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) code
-- MAGIC - `europe_cities` is a dictionary, and the values of the dictionary are lists. 
-- MAGIC - the key `'spain'` is used to locate the specific item, and  index `2` is used to locate the third element of list.
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - The third city in the list of cities in Spain in the `europe_cities` dictionary.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Answer
-- MAGIC europe_cities = {'spain'  :['madrid', 'barcelona', 'seville', 'valencia'], 
-- MAGIC                  'france' :['paris', 'marseille', 'bordeaux'], 
-- MAGIC                  'germany':['berlin', 'munich'], 
-- MAGIC                  'norway' :['oslo'] }
-- MAGIC europe_cities['spain'][2]

-- COMMAND ----------

-- MAGIC %md ## Comprehensions

-- COMMAND ----------

-- MAGIC %md __Exercise 7:__ use a list comprehension to display a list of the square of every integer greater than or equal to `0` and (strictly) less than `10`.

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC **interpretation**    
-- MAGIC 1)Code:
-- MAGIC - The **range()** function generates the integer numbers between the given start integer to the stop integer, in this case from ``0`` to ``9``. 
-- MAGIC - In the **list comprehension**, **for loop** clause is used to iterate over a sequence of numbers produced by the **range()** function and store it in variable `X`. 
-- MAGIC - `X**2` is calculated and the corresponding values are stored in `a_list` as a list
-- MAGIC - The **print()** function display the `a_list`.   
-- MAGIC 
-- MAGIC 2)Output:   
-- MAGIC - A list of squared values of each integer from 0 to 9

-- COMMAND ----------

-- MAGIC %python
-- MAGIC a_list =[X**2 for X in range(10)]
-- MAGIC print(a_list)

-- COMMAND ----------

-- MAGIC %md __Exercise 8:__ use a list comprehension to display a list of the square of every odd integer greater than or equal to `0` and (strictly) less than `10`.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation**   
-- MAGIC 1) Code:  
-- MAGIC - The **range()** function generates the integer numbers between the given start integer to the stop integer, in this case from ``0`` to ``9``. 
-- MAGIC - The **if** statement `X %2 !=0` filters the odd numbers produced by the **range()** function.
-- MAGIC - In the list comprehenstion,  **for loop** is used to iterate over each number produced by the **range()** and **if** function   , and store it in variable `X`.
-- MAGIC - Then `X**2` is calculated and the corresponding values are stored in `b_list` as a list
-- MAGIC - The **print()** function display the `b_list`, which is a list.
-- MAGIC 
-- MAGIC 2) Output:   
-- MAGIC - A list of squared values of each odd integer from 0 to 9

-- COMMAND ----------

-- MAGIC %python
-- MAGIC b_list=[X**2 for X in range(10) if X %2 !=0]
-- MAGIC print(b_list)

-- COMMAND ----------

-- MAGIC %md The following code cell creates a dictionary and stores it in variable `europe_cities`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #Question
-- MAGIC europe_cities = {'spain'  :['madrid', 'barcelona', 'seville', 'valencia'], 
-- MAGIC                  'france' :['paris', 'marseille', 'bordeaux'], 
-- MAGIC                  'germany':['berlin', 'munich'], 
-- MAGIC                  'norway' :['oslo'] }

-- COMMAND ----------

-- MAGIC %md __Exercise 9:__ use a dictionary comprehension to create and display a dictionary with the same keys as `europe_cities` but with values that are the length of the list for that key in the `europe_cities` dictionary. For instance the value corresponding to the key `spain` will be `4`.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**   
-- MAGIC 1) Code: 
-- MAGIC In the dictionary comprehension,
-- MAGIC - **Item()** method changes the key-value pairs stored in dictionary `europe_cities` as tuples;
-- MAGIC -  Tuples are retrieved by **the `for` loop**.
-- MAGIC -  The key and value of the resulting dictionary can be changed so that the **len()** function returns the length of each value retrieved;
-- MAGIC -  New key value pairs ``key:len(value)`` are stored in new dictionary `europe_citiesnew`;
-- MAGIC -  The **print()** function displays the new dictionary `europe_citiesnew`.   
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - It returns a dictionary. 
-- MAGIC - The keys of the dictionary are names of the country(original key of the `europe_cities` dinctionary).
-- MAGIC - The values of the dictionary are the length of the list for the corresponding keys. The length indicates the number of the elements that each list contains. 

-- COMMAND ----------

-- MAGIC %python
-- MAGIC europe_cities = {'spain'  :['madrid', 'barcelona', 'seville', 'valencia'], 
-- MAGIC                  'france' :['paris', 'marseille', 'bordeaux'], 
-- MAGIC                  'germany':['berlin', 'munich'], 
-- MAGIC                  'norway' :['oslo'] }
-- MAGIC europe_citiesnew={key:len(value) for (key,value) in europe_cities.items()}
-- MAGIC print(europe_citiesnew)

-- COMMAND ----------

-- MAGIC %md __Exercise 10:__ Write a list comprehension, in or following the next cell, that returns a list containing the four countries from the dictionary `europe_cap_pop`.

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC europe_cap_pop = {'spain'  : { 'capital':'madrid' , 'population':46.77 },
-- MAGIC                   'france' : { 'capital':'paris'  , 'population':66.03 },
-- MAGIC                   'germany': { 'capital':'berlin' , 'population':80.62 },
-- MAGIC                   'norway' : { 'capital':'oslo'   , 'population': 5.84 }}

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **interpretation:**
-- MAGIC 
-- MAGIC 1) Code
-- MAGIC - **europe_cap_pop.keys()** method returns keys of the `europe_cap_pop` dictionary,
-- MAGIC - Using **for loop** we can iterate over a sequence of values produced by the **keys()** method,and store it in variable `x`;
-- MAGIC - `x` is stored in the variable `country2`
-- MAGIC - The **print()** function displays the new list `country2`.
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - A list contains the four countries from the dictionary `europe_cap_pop`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC europe_cap_pop = {'spain'  : { 'capital':'madrid' , 'population':46.77 },
-- MAGIC                   'france' : { 'capital':'paris'  , 'population':66.03 },
-- MAGIC                   'germany': { 'capital':'berlin' , 'population':80.62 },
-- MAGIC                   'norway' : { 'capital':'oslo'   , 'population': 5.84 }}
-- MAGIC 
-- MAGIC country2 = [x for x in europe_cap_pop.keys()]
-- MAGIC print(country2)

-- COMMAND ----------

-- MAGIC %md __Exercise 11:__ Write a list comprehension, in or following the next cell, that returns a list containing the four capitals from the dictionary `europe_cap_pop`.

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC europe_cap_pop = {'spain'  : { 'capital':'madrid' , 'population':46.77 },
-- MAGIC                   'france' : { 'capital':'paris'  , 'population':66.03 },
-- MAGIC                   'germany': { 'capital':'berlin' , 'population':80.62 },
-- MAGIC                   'norway' : { 'capital':'oslo'   , 'population': 5.84 }}

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**   
-- MAGIC 1) Code
-- MAGIC -  **europe_cap_pop.values()** method returns values of the `europe_cap_pop` dictionary. The values are sub-dictionaries 
-- MAGIC - In the list comprehension,  **for loop**  can be used to iterate over a sequence of values produced by the **values()** method,and store it in variable `x`
-- MAGIC -  **x['capital']** indexes the sub-dictionary to obtain the corresponding values;
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - A list contains the four capitals from the dictionary `europe_cap_pop`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC captials =[x['capital'] for x in europe_cap_pop.values()]
-- MAGIC captials

-- COMMAND ----------

-- MAGIC %md ## Map & filter 

-- COMMAND ----------

-- MAGIC %md __Exercise 12:__ use the `map` function to display a list of the square of every integer greater than or equal to `0` and (strictly) less than `10`. 

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) code
-- MAGIC - **lambda** creates an anonymous function to store `x**2` in the variable `x`
-- MAGIC - The **range()** function generates the integer numbers between the given start integer to the stop integer, in this case from ``0`` to ``9``
-- MAGIC - **map()** function applies the **lambda** function to the variables returned from **range()** function
-- MAGIC - **list()** function converts iterable value returned by **map()** function to a list 
-- MAGIC 
-- MAGIC 2) output
-- MAGIC - A list of the square of every integer from `0` to `9`. 

-- COMMAND ----------

-- MAGIC %python
-- MAGIC list(map(lambda x: x**2,
-- MAGIC          range(10)))

-- COMMAND ----------

-- MAGIC %md __Exercise 13:__ use the `map` and `filter` functions to display a list of the square of every odd integer greater than `0` and (strictly) less than `10`.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**   
-- MAGIC 1) Code
-- MAGIC - **filter()** function returns only those elements from 0 to 9 for which the **lambda** function `x%2 !=0` returns `True`
-- MAGIC - **map()** function runs the function defined by **lambda** to each elements in `odd`. 
-- MAGIC - **list()** function converts iterable value returned by **map()** function to a list
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - A list of the square of every odd integer from `0` to `9`. 

-- COMMAND ----------

-- MAGIC %python
-- MAGIC odd = filter(lambda x: x%2!=0, range(10))
-- MAGIC list(map(lambda y: y**2, odd))

-- COMMAND ----------

-- MAGIC %md __Exercise 14:__ Use the `map` function, in or following the next cell, that returns a list containing the four countries from the dictionary `europe_cap_pop`.

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC europe_cap_pop = {'spain'  : { 'capital':'madrid' , 'population':46.77 },
-- MAGIC                   'france' : { 'capital':'paris'  , 'population':66.03 },
-- MAGIC                   'germany': { 'capital':'berlin' , 'population':80.62 },
-- MAGIC                   'norway' : { 'capital':'oslo'   , 'population': 5.84 }}

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**   
-- MAGIC 1) Code
-- MAGIC - **lambda** creates an anonymous function;
-- MAGIC - **map()** function applies the **lambda** function, extracting the values of `keys` from dictionary.
-- MAGIC - **list()** function converts iterable values returned by **map()** function to a list 
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - A list contains the four countries from the dictionary `europe_cap_pop`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC list(map(lambda key: key, europe_cap_pop))

-- COMMAND ----------

-- MAGIC %md __Exercise 15:__ Use either a list comprehension or the `map` and `filter` functions, in or following the next cell, 
-- MAGIC that returns a list containing the capitals of countries with populations over `50` (from the dictionary `europe_cap_pop`).

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC europe_cap_pop = {'spain'  : { 'capital':'madrid' , 'population':46.77 },
-- MAGIC                   'brance' : { 'capital':'paris'  , 'population':66.03 },
-- MAGIC                   'germany': { 'capital':'berlin' , 'population':80.62 },
-- MAGIC                   'norway' : { 'capital':'oslo'   , 'population': 5.84 }}

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code
-- MAGIC - Brackets containing an expression followed by a for clause is used to define list comprehension.
-- MAGIC - The **for** clause access each value from the dictionary `europe_cap_pop`;
-- MAGIC - The expression **x['capital']** access each dictionary value to obtain the corresponding capital;
-- MAGIC - **if** statement is added after **loop** so that only capitals with country populations over 50 will be kept;
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC  - A list contains the capitals of countries with populations over `50` (from the dictionary `europe_cap_pop`).

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC [x['capital'] for x in europe_cap_pop.values() if x['population']>50 ]

-- COMMAND ----------

-- MAGIC %md __The End__