
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
public partial class VM : System.Web.UI.Page
{
    int sum = 0; //total amount entered in denominations of either 1,2,5 or 10
   
    protected void Page_Load(object sender, EventArgs e)
    {
    
        Panel1.BackColor = Color.LightCyan;
        /*during page load, setting the dynamic UI displays as false*/
        if (!IsPostBack)
        {
            InitialState.Visible = false;
            BeverageSelection.Visible = false;
            SelectionState.Visible = false;
            Success.Visible = false;
            Beverage.Visible = false;
            Submit.Visible = false;
            Return.Visible = false;
            ViewState["sum"] = 0;
           
        }


    }
    /*keep on inserting coins in denominations of 1,2,5,10 till the upper bound of 20 bucks is reached*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        Success.Visible = false;
        Beverage.Visible = false;
        ViewState["sum"] =Convert.ToInt32(ViewState["sum"])+Convert.ToInt32(CoinList.SelectedItem.Value);
        

        sum = Convert.ToInt32(ViewState["sum"]);
        if (sum <20)  //if amount is less than 20, the vending machine remains in its initial state.
        {
            InitialState.Text = "Coin entered is " + CoinList.SelectedItem.Text + " Current sum is: " + sum + ". Add more coins to sum upto 20";
            InitialState.Visible = true;
            
        }
        else if (sum == 20)  //if amount is equal to 20, the vending machine reaches the selection state.
        {
            InitialState.Visible = false;
            SelectionState.Text = "Amount entered equals " + sum + " rupees. You have entered the selection state. Select 1 for coffee/ 2 for tea";
            SelectionState.Visible = true;
            BeverageSelection.Visible = true;
            Submit.Visible = true;
        }
        else //if amount is greater than 20, then it again is an unacceptable state, the user is first returned the change and then machine reaches the selection state
                  
        {
            InitialState.Text = "Oops you have entered more money i.e "+ sum+" Click on return button to get back the change";
            InitialState.Visible = true;
            Return.Visible = true;
         
        }
    }
    /*submitting final choice as 1 for coffee or 2 for tea*/
    protected void Submit_Click(object sender, EventArgs e)
    {
        Beverage.Text = BeverageSelection.SelectedValue;
        Beverage.Visible = true;
        Success.Visible = true;
        BeverageSelection.Visible = false;
        Submit.Visible = false;
        ViewState["sum"] = 0;
        InitialState.Visible = false;
        SelectionState.Visible = false;
        
        
    }
    /* if amount is greater than 20, clicking on the 'Get My Change' button returns you the change*/
    protected void Return_Click(object sender, EventArgs e)
    {
        sum -= (Convert.ToInt32(ViewState["sum"]) - 20);
        Return.Visible = false;
        InitialState.Text = "Rupees " + (Convert.ToInt32(ViewState["sum"]) - 20) + " returned to you";
        SelectionState.Text = " You have entered the selection state. Select 1 for coffee/ 2 for tea";
        SelectionState.Visible = true;
        BeverageSelection.Visible = true;
        Submit.Visible = true;
    }
}