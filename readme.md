<h1>pa-ims</h1>
<br>
<p> To achieve a interactive music shell(IMS), I used following 
module for better testing and decoupling.
</p>
<p>
Interpreter module is used for transforming user input into 
command and arguments, and also 
detect some of the bugs of user input.
</p>

<p>
Models folder are stored with lots of models class. They are 
used to create object and most importantly work as a documentation
for how to store data.
</p>

<p>
    json_data module is a module to encapsulate YAML:Store
    class to offer more simple and reliable API.(Although bad
    performance, but this is the trade off)
</p>

<p>
    store module is an encapsulation of json_data which
    offers some json_data object for easy data accessing.
</p>

<p>
    finally, we use minitest to test the system.
    If more time given, in the methods_spec, I will mock
    a storage module for better isolation, but for now, I 
    can only ensure no excepetion was thrown.
</p>