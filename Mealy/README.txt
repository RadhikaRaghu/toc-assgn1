
SIMULATION OF MEALY MACHINE: WASHING MACHINE

ABOUT:

We have simulated the following implementation of Washing Machine in ASP.NET technology

Automatic Washing Machines have different states such as Pre-Wash, Wash, Rinse, Spin and Start. The machine is set with different
parameter values like time( how many minutes the machine should spend in a particular state), temperature RPM and type of water before
the press of start button. Once the start button is pressed, the values cannot be changed.

Time for each state can perform its task( Available Time): 4,10,12,14,16,18
RPM for spin  (Available RPMs):                            400,800
Temperature   (Available Temperature):                     20,30,40,60,80



The different types of cloth are synthetic, woollen and cotton. They can be washed either in Cold/Warm Water and the RPM for spin is also
dependent on the type of cloth. Based on the clothes, the parameters vary and some of the conditions are as follows:

a) Synthetic clothes should be washed in cold water and the temperature setting should be below 30.
b) Woolen clothes cannot have pre-wash option and spin RPM not more than 400.
c) Cottons are washed in cold water and RPM can be up to 800.
d) For synthetic clothes, the time spent in Pre-Wash, Wash, Rinse and Spin states are: 10, 16, 18, 4
e) For woolen clothes, the time spent in Wash, Rinse and Spin states  areL 14, 18 and 4.
f) For cotton clothes, the time spent in Pre-Wash, Wash, Rinse and Spin states are: 10, 18, 14, 4.


WORKING:

IDE: Visual Studio is required to run the code. Download the zip file of the project 'Mealy' and run the web application in VS IDE.

The user of the machine inputs the type of cloth by selecting the entry from dropdownlist. Based on
the type of cloth, the available water types and temperature are listed. Once, the start button is pressed, all the
parameters( except the RPM) are set and the lifecycle of the Washing Machine is printed which also highlights
how much time is spent in each state. Once the machine reaches spin state, it asks for an RPM value which is to be set
Once that is set, the clothes are spun and enter the drying state. Process of washing terminates.

