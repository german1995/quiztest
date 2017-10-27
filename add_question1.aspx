<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_question1.aspx.cs" Inherits="Bin_add_question1" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <%

        String cat = Request.QueryString["cat"];
        String subcat = Request.QueryString["sub"];
        String ques = Request.QueryString["ques"];
        String choice = Request.QueryString["choice"];
        String ans = Request.QueryString["answer"];
        String chA = Request.QueryString["A"];
        String chB = Request.QueryString["B"];
        String chC = Request.QueryString["C"];
        String chD = Request.QueryString["D"];
        String chE = Request.QueryString["E"];
        Response.Write(cat);
        Response.Write(chE);

        String constring = "Server=127.0.0.1;database=gs;Port=7172;Uid=root;password=root";
        MySqlConnection conn = new MySqlConnection(constring);
        MySqlCommand command = conn.CreateCommand();
        command.CommandText = "INSERT INTO quizquestion(cat,subcat,question,answer,choices,chA,chB,chC,chD,chE) values(@cat,@subcat,@ques,@answer,@choices,@chA,@chB,@chC,@chD,@chE)";
        command.Parameters.AddWithValue("@cat", cat);
        command.Parameters.AddWithValue("@subcat", subcat);
        command.Parameters.AddWithValue("@ques", ques);
        command.Parameters.AddWithValue("@answer", ans);
        command.Parameters.AddWithValue("@choices", choice);
        command.Parameters.AddWithValue("@chA", chA);
        command.Parameters.AddWithValue("@chB", chB);
        command.Parameters.AddWithValue("@chC", chC);
        command.Parameters.AddWithValue("@chD", chD);
        command.Parameters.AddWithValue("@chE", chE);


        conn.Open();

        command.ExecuteNonQuery();


        conn.Close();





        %>
   </body>
</html>
