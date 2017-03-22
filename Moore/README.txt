SIMULATION OF VENDING MACHINE AS MOORE MACHINE

ABOUT:

We have simulated the following implementation of Vending Machine as a web app in ASP.NET technology:

Problem Statement: Vending Machine – Accept 20 rupees and dispense Coffee/Tea according to the input selected by user. 
The user first inserts 20 rupee coin in different denominations of {1, 2, 5 and 10}. Once the coins are accepted, 
the user can select Coffee/Tea {Input 1 for Coffee and 2 for Tea}.

WORKING:

IDE: Visual Studio is required to run the code. Download the zip file and run the web application in VS IDE.

The user will keep on inserting coins in denominations of 1,2,5,10 till the upper bound of 20 bucks is reached.
If amount is less than 20, the vending machine remains in its initial state.
If amount is equal to 20, the vending machine reaches the selection state.
If amount is greater than 20, then it again is an unacceptable state, the user is first returned the change and then machine reaches the selection state
Once the selection state is reached, an input of one from the user renders coffee, an input of two from the user renders tea. Both coffee and tea represent separate states. 
