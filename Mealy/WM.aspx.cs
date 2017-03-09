
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
public partial class WM : System.Web.UI.Page
{
    List<int> temperature;
     
         
         protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.BackColor = Color.LemonChiffon;
        if (!IsPostBack)
        {
            /*UI for MACHINE LIFECYCLE displays set to false prior to start of machine*/
            Title.Visible = false;
            PW.Visible = false;
            PW_Values.Visible = false;
            PW_Time.Visible = false;
            Wash.Visible = false;
            Wash_Value.Visible = false;
            Rinse.Visible = false;
            Rinse_Values.Visible = false;
            Spin.Visible = false;
            Spin_Time.Visible = false;
            List_RPM.Visible = false;
            Error_Label.Visible = false;
            Final.Visible = false;
           

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Spin_Time.Visible = false;
        List_RPM.Visible = false;
        Error_Label.Visible = false;
        Final.Visible = false;
        Spin.Visible = false;
       
        List_RPM.SelectedIndex = 0;
        Hashtable tuple = new Hashtable();
        tuple["cloth"] = List_ClothType.SelectedItem.Text;
        tuple["water"] = List_WaterType.SelectedItem.Text;
        tuple["temp"] = PW_Temp.SelectedItem.Text;
        if (List_ClothType.SelectedItem.Text == "Synthetic")
        {
            tuple["PW_Time"] = 10; //time for prewash
            tuple["W_Time"] = 16;  //time for wash
            tuple["R_Time"] = 18;  //time for rinse
            tuple["S_Time"] = 4;   //time for spin
            ViewState["STime"] = tuple["S_Time"];
        }
        if (List_ClothType.SelectedItem.Text == "Cotton")
        {
            tuple["PW_Time"] = 10; //time for prewash
            tuple["W_Time"] = 18;  //time for wash
            tuple["R_Time"] = 14;  //time for rinse
            tuple["S_Time"] = 4;   //time for spin
            ViewState["STime"] = tuple["S_Time"];
        }
        if (List_ClothType.SelectedItem.Text == "Woolen")
        {

            tuple["W_Time"] = 14;  //time for wash
            tuple["R_Time"] = 18;  //time for rinse
            tuple["S_Time"] = 4;   //time for spin
            ViewState["STime"] = tuple["S_Time"];

        }
        /*Displaying machine lifecycle below*/

        Title.Visible = true;
        if (List_ClothType.SelectedItem.Text == "Cotton" || List_ClothType.SelectedItem.Text == "Synthetic")
        {
            PW.Visible = true;
            PW_Values.Visible = true;

            PW_Values.Text = tuple["cloth"].ToString() + ", " + tuple["water"].ToString() + ", " + tuple["temp"].ToString() + " degrees";
            PW_Time.Visible = true;
            PW_Time.Text = " and spends around " + tuple["PW_Time"].ToString() + " units of time in this state";
            Wash.Visible = true;
            Wash_Value.Visible = true;
            Wash_Value.Text = " and spends around " + tuple["W_Time"].ToString() + " units of time in this state";
        } //because only synthetic and cotton clothes have prewash states
        else  //if the input cloth is woolen. No Prewash state.
        {

            PW_Values.Visible = false;
            PW_Time.Visible = false;
            PW.Text = "1) Machine doesn't have a pre-wash state.";
            PW.Visible = true;


            Wash.Text = "2) Machine directly enters Wash State with the following cloth type, water type and temp respectively: ";
            Wash.Visible = true;
            Wash_Value.Text = tuple["cloth"].ToString() + ", " + tuple["water"].ToString() + ", " + tuple["temp"].ToString() + " degrees" + " and spends around " + tuple["W_Time"].ToString() + " units of time in this state";
            Wash_Value.Visible = true;


        }
        Rinse.Visible = true;
        Rinse_Values.Visible = true;
        Rinse_Values.Text = " and spends around " + tuple["R_Time"].ToString() + " units of time in this state";
        Spin.Visible = true;
        List_RPM.Visible = true;




    }
    protected void List_ClothType_SelectedIndexChanged(object sender, EventArgs e)
    {

        temperature = new List<int>();
        temperature.Add(20);
        temperature.Add(30);
        temperature.Add(40);
        temperature.Add(60);
        temperature.Add(80);
     
        List_WaterType.Items.Remove("Cold");
        List_WaterType.Items.Remove("Warm");

        foreach (int i in temperature)
        {
            PW_Temp.Items.Remove(i.ToString());
        }
        
        if (List_ClothType.SelectedItem.Text == "Synthetic" || List_ClothType.SelectedItem.Text == "Cotton")
        {
            //List_ClothType.AutoPostBack = false;

            List_WaterType.Items.Add("Cold");
            if (List_ClothType.SelectedItem.Text == "Synthetic")
            {
                //PW_Temp.Items.Add("20");
                foreach (int i in temperature)
                {
                    if (i < 30)
                        PW_Temp.Items.Add(i.ToString());
                }


            }
            else
            {
                foreach (int i in temperature)
                {
                    PW_Temp.Items.Add(i.ToString());
                }
           
            }




        }
        else
        {
            // List_ClothType.AutoPostBack = false;

            List_WaterType.Items.Add("Cold");
            List_WaterType.Items.Add("Warm");
            foreach (int i in temperature)
            {
                PW_Temp.Items.Add(i.ToString());
            }
      
        }




    }
    protected void List_RPM_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (List_ClothType.SelectedItem.Text == "Woolen" && Convert.ToInt32(List_RPM.SelectedValue) > 400)
        {
            Error_Label.Visible = true;
        }
        else
        {

            if (Convert.ToInt32(List_RPM.SelectedValue) == 400 || Convert.ToInt32(List_RPM.SelectedValue) == 800)
            {
                Error_Label.Visible = false;
                Spin_Time.Text = "RPM Set to " + List_RPM.SelectedItem.Text + ". Spends around " + ViewState["STime"].ToString() + " units of time in this state";

                Spin_Time.Visible = true;

                Final.Visible = true;

            }
        }
    }
}
