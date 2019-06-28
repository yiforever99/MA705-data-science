-- Databricks notebook source
-- MAGIC %md # Week 2 - Exercises - Python Essentials (Part 2) [codingwatchcity]

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

-- MAGIC %md ## Methods

-- COMMAND ----------

-- MAGIC %md __Exercise 16:__ use three methods on the string defined below and describe your results. 

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_string = "It's a lovely day in the neighborhood."

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**   
-- MAGIC 1) Code
-- MAGIC - method1 **count()**: count the number of times ``o`` occurs in `my_string`
-- MAGIC - method2 **upper()**: convert the string into upper case
-- MAGIC - method3 **replace()**: replace the word ``lovely`` with ``great``
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - 4 times ``o`` occurs in `my_string`
-- MAGIC - Upper case of `my_string`
-- MAGIC - The word ``lovely`` replaced by ``great``in `my_string`

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_string = "It's a lovely day in the neighborhood."
-- MAGIC 
-- MAGIC #method1: 
-- MAGIC print(my_string.count('o'))
-- MAGIC #method2:
-- MAGIC print(my_string.upper())
-- MAGIC #method3: 
-- MAGIC print(my_string.replace('lovely','great'))

-- COMMAND ----------

-- MAGIC %md __Exercise 17:__ use three methods on the list defined below and describe your results.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_list = [2, 3, 4, 5, 7, 8, 11, 16]

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code
-- MAGIC - method1 **reverse()**: reverse the order of the list;
-- MAGIC - method2 **index()**: finds the sequence number of the element;
-- MAGIC - method3 **insert()**: insert a number into the list.
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - A list with the reverse order of `my_list` and `100` in the second position.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_list = [2, 3, 4, 5, 7, 8, 11, 16]
-- MAGIC #method1
-- MAGIC my_list.reverse()
-- MAGIC my_list

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_list = [2, 3, 4, 5, 7, 8, 11, 16]
-- MAGIC #method2
-- MAGIC b = my_list.index(11)
-- MAGIC #method3
-- MAGIC my_list.insert(1,100)
-- MAGIC print(b)
-- MAGIC print(my_list)

-- COMMAND ----------

-- MAGIC %md ## JSON 
-- MAGIC 
-- MAGIC See the [/Data Lab notebooks/Python/Essentials/JSON](https://bentley.cloud.databricks.com/#notebook/858024) notebook for JSON examples. 

-- COMMAND ----------

-- MAGIC %md __Exercise 18:__ create JSON data that stores contact info for the members of your group. (It doesn't need to be real data.)
-- MAGIC This contact data should be a list and each element of the list should be a dictionary. 
-- MAGIC Each dictionary should record the contact info for one person and should include a key called `"name"`.
-- MAGIC - Store this data as a Python string in a variable named `group_json_string` (in the following code cell).

-- COMMAND ----------

-- MAGIC %python
-- MAGIC group_json_string=''

-- COMMAND ----------

-- MAGIC  %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code
-- MAGIC - use **import** statement loads the JSON module.
-- MAGIC - create a JSON object containing dictionaries as an element
-- MAGIC - **json.loads** function is used to convert an JSON object in to a python object (list in this case) 
-- MAGIC - The variable named `group_json_string` stores the data.
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - JSON data that stores name and email info for the members of our group.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC 
-- MAGIC import json
-- MAGIC contact_info=json.loads('[{"name":"xinyu","email":"ma_xiny@bentley.edu"},{"name":"shuangyu","email":"jia_shua@bentley.edu"},{"name":"yanru","email":"yang_yanr@bentley.edu"},{"name":"weiran","email":"lyu_weir@bentley.edu"},{"name":"naili","email":"zhu_nail@bentley.edu"}]')
-- MAGIC 
-- MAGIC group_json_string= '[{"name":"xinyu","email":"ma_xiny@bentley.edu"},{"name":"shuangyu","email":"jia_shua@bentley.edu"},{"name":"yanru","email":"yang_yanr@bentley.edu"},{"name":"weiran","email":"lyu_weir@bentley.edu"},{"name":"naili","email":"zhu_nail@bentley.edu"}]'
-- MAGIC group_json_string

-- COMMAND ----------

-- MAGIC %md __Exercise 19:__ create and display a list using the `loads` function (from the `json` module) with the JSON data stored in `group_json_string` from the previous exercise as input. 
-- MAGIC - Store the output (of the `loads` function) in a variable named `group_contact_list`.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - use **import** to gain access to the code in JSON module
-- MAGIC - **json.loads** function is used to convert JSON stirng `group_json_string `to a python object (list in this case) and the output is stored in `group_contact_list`
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A python list that stores name and email info for the members of our group.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import json
-- MAGIC group_contact_list = json.loads(group_json_string)
-- MAGIC group_contact_list

-- COMMAND ----------

-- MAGIC %md __Exercise 20:__ create and display a Pandas dataframe using the JSON data, stored in `group_contact_list`. 

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code：
-- MAGIC - Use **import** statement loads the pandas library and returns it in the `pd` variable
-- MAGIC - The **pandas DataFrame constructor** takes the list of dictionaries as input into a DataFrame type
-- MAGIC 
-- MAGIC 2) Output：
-- MAGIC - A Pandas dataframe that stores name and email info for the members of our group.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import pandas as pd
-- MAGIC group_contact_list =pd.DataFrame(group_contact_list)
-- MAGIC group_contact_list

-- COMMAND ----------

-- MAGIC %md __Exercise 21__: Using this file: `/dbfs/mnt/datalab-datasets/file-samples/one_list.json`
-- MAGIC 1. Create, using a `with`-`open` context manager, a list of dictionaries in variable `one_list` (from the above file)
-- MAGIC 1. Display, using a list comprehension, a list of quantities (from `one_list`)
-- MAGIC 1. Display, using a list comprehension, a list of quantities with `100` added to each quantity (from `one_list`)
-- MAGIC 1. Display, using a list comprehension, a list of quantities greater than `250` (from `one_list`)

-- COMMAND ----------

-- MAGIC %sh head /dbfs/mnt/datalab-datasets/file-samples/one_list.json

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code 
-- MAGIC - the **with** command opens the file for reading and stores the file object, returned by the **open** function, in the `infile` variable.
-- MAGIC - **json.load** function is used to load the file into a list and **print()** function is used to display the results.
-- MAGIC 
-- MAGIC 2) Output
-- MAGIC - A list of dictionaries in variable `one_list`

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #1
-- MAGIC import json
-- MAGIC with open('/dbfs/mnt/datalab-datasets/file-samples/one_list.json','r') as infile:
-- MAGIC   one_list=json.load(infile)
-- MAGIC   
-- MAGIC print(one_list)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code：
-- MAGIC - `one_list` is a list of dictionary.
-- MAGIC - In the list comprehension, x indicates each element of the `one_list`, and **for loop** is used to iterate over each subdictionary of `one_list`. 
-- MAGIC -  **x['quantity']** indexes the key of sub-dictionary to obtain the corresponding values;
-- MAGIC 
-- MAGIC 2) Output：  
-- MAGIC A list of quantities from `one_list`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #2
-- MAGIC list_2 = [x['quantity'] for x in one_list]
-- MAGIC list_2

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code： 
-- MAGIC - Using **for loop** we can iterate over a sequence of elements  of `list_2` , and store it in `x`.
-- MAGIC - `x+100` is stored in `list_3`
-- MAGIC - **print()** function shows the result
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A list of quantities with `100` added to each quantity (from `one_list`)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #3
-- MAGIC list_3 = [x+100 for x in list_2]
-- MAGIC print(list_3)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - **if** statement `x>250` is added at the end of the list comprehension, and returns elements  greater than `250` of `list_2` 
-- MAGIC - **for loop** stores elements greater than `250` of `list_2` in `x`
-- MAGIC - The values of `x` are stored in `list_4`
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC -  A list of quantities greater than `250` (from `one_list`)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #4
-- MAGIC list_4 = [x for x in list_2 if x>250]
-- MAGIC print(list_4)

-- COMMAND ----------

-- MAGIC %md __Exercise 22__: Using this file: `/dbfs/mnt/datalab-datasets/file-samples/one_list.json`
-- MAGIC 1. Create, using a `with`-`open` context manager, a list of dictionaries in variable `one_list` (from the above file)
-- MAGIC 1. Display, using the `map` function, a list of quantities (from `one_list`)
-- MAGIC 1. Display, using the `map` function, a list of quantities with `100` added to each quantity (from `one_list`)
-- MAGIC 1. Display, using the `map` and `filter` functions, a list of quantities greater than `250` (from `one_list`)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **interpretation**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - the **with** command opens the file for reading and stores the file object, returned by the **open** function, in the `infile` variable. 
-- MAGIC - **json.load** function loads the contents of the file into a python list and **print()** is used to display the results
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A list of dictionaries in variable `one_list`

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #1
-- MAGIC import json
-- MAGIC with open('/dbfs/mnt/datalab-datasets/file-samples/one_list.json', 'r') as infile:
-- MAGIC   one_list=json.load(infile)
-- MAGIC 
-- MAGIC one_list

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code: 
-- MAGIC - **lambda** creates an anonymous function. x in the lambda function indicates each element(subdictionary) of the `one_list`.
-- MAGIC - **map()** function applies the lambda function, extracting the corresponding value of `'quantities'` from each dictionary.
-- MAGIC - **list()** function converts iterable value returned by **map()** function to a list 
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC -  a list of quantities (from `one_list`)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #2.Display, using the map function, a list of quantities (from one_list)
-- MAGIC list_2 = list(map(lambda x:x['quantity'],one_list))
-- MAGIC list_2

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - **lambda** creates an anonymous function. x in the lambda function indicates each element(subdictionary) of the one_list.
-- MAGIC - **map()** function applies the lambda function, extracting the corresponding value of `'quantities'` from each dictionary.
-- MAGIC - Add `100` to the extracted values respectively
-- MAGIC - **list()** convert iterable value returned by **map()** function to a list 
-- MAGIC 
-- MAGIC 2) output
-- MAGIC - a list of quantities with `100` added to each quantity (from `one_list`)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC #3.Display, using the map function, a list of quantities with 100 added to each quantity (from one_list)
-- MAGIC list_3 = list(map(lambda x:x['quantity']+100,one_list))
-- MAGIC 
-- MAGIC print(list_3)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - **lambda** creates an anonymous function. x and y in the lambda functions indicate each element(subdictionary) of the `one_list`.
-- MAGIC - **filter()** function applies the lambda function, indexing the corresponding value of `'quantities'` which are greater than `250` from each dictionary.The **filter** function returns the index of each target `'quantities'`
-- MAGIC - **map()** function applies the **lambda** function, extracting the corresponding values of `'quantities'` from each dictionary, based on the index returned from the **filter()** function.
-- MAGIC - **list()** function converts iterable value returned by **map()** function to a list 
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - a list of quantities greater than `250` (from `one_list`)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import json
-- MAGIC with open('/dbfs/mnt/datalab-datasets/file-samples/one_list.json', 'r') as infile:
-- MAGIC   one_list=json.load(infile)
-- MAGIC 
-- MAGIC criteria = filter(lambda x:x['quantity']>250, one_list)
-- MAGIC 
-- MAGIC list_4 = list(map(lambda y:y['quantity'],criteria))
-- MAGIC 
-- MAGIC list_4

-- COMMAND ----------

-- MAGIC %md __Exercise 23:__ Some datafiles, such as the file partially displayed below, are stored as a single JSON object. This is acceptable for small files.
-- MAGIC 
-- MAGIC 
-- MAGIC Read in the entire contents of the file using the `load` function of the `json` package. 
-- MAGIC - Display the result of the `load` function. 
-- MAGIC - What type of Python object is the result? Why? 
-- MAGIC %sh head -n 54 /dbfs/mnt/datalab-datasets/file-samples/one_list_with_metadata.json

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - the **with** command opens the file and stores the `one_list_with_metadata.json`, returned by the **open** function (an 'r' indicates the file will be read), in the `infile` variable.
-- MAGIC - **json.load** function is used to load the file into a python object, here is a dictionary.
-- MAGIC - display the list and the type of the list
-- MAGIC - dictionary is the type of the result object because the **load** function returns the Python object that corresponds to the JSON data, which is usually a list or a dict. 
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A python object, here is a dictionary.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import json
-- MAGIC with open ('/dbfs/mnt/datalab-datasets/file-samples/one_list_with_metadata.json','r') as infile:
-- MAGIC   contents_of_file = json.load(infile)
-- MAGIC contents_of_file, type(contents_of_file)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code: 
-- MAGIC - The `%sh` magic at the beginning of the code cell indicates that the cell contains shell commands;
-- MAGIC - the head -n 54 shows the top 54 lines of the data set(although not enough data can be found).
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - The top 54 lines of the data set(although not enough data can be found).

-- COMMAND ----------

-- MAGIC %sh head -n 54 /dbfs/mnt/datalab-datasets/file-samples/one_list_with_metadata.json

-- COMMAND ----------

-- MAGIC %md __Exercise (continued) 24:__ Create (and display) a dataframe from (part of) the result of the `load` function in the previous part of this exercise.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Interpretation:**
-- MAGIC 
-- MAGIC 1) Code:
-- MAGIC - **import** statement loads the pandas library and returns it in the `pd` variable;
-- MAGIC - The **pandas DataFrame constructor** takes the list of dictionaries as input into a DataFrame type, accessing columns `'id'` and `'quantity'`.
-- MAGIC 
-- MAGIC 2) Output:
-- MAGIC - A pd DataFrame of `one_list` with columns named `'id'` and ` 'quantity'`.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import json
-- MAGIC with open('/dbfs/mnt/datalab-datasets/file-samples/one_list.json', 'r') as infile:
-- MAGIC   one_list=json.load(infile)
-- MAGIC   
-- MAGIC import pandas as pd
-- MAGIC pd.DataFrame(one_list, columns=['id','quantity'])

-- COMMAND ----------

-- MAGIC %md __The End__