
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>

<% Server.Execute("header.aspx"); %>
 
<%   

    string qid,question, chA, chB, chC, chD, chE;


    string cat=Request.QueryString["cat"];
    if (cat==null)
    {
        cat = "";
    }
    else
    {
        String constring = "Server=127.0.0.1;database=gs;Port=7172;Uid=root;password=root";
        MySqlConnection conn1 = new MySqlConnection(constring);
        MySqlCommand command1 = conn1.CreateCommand();
        command1.CommandText = "select * from quizquestion where cat='" + cat + "'";
        int count = 1;
        conn1.Open();
        MySqlDataReader rd = command1.ExecuteReader();
        %>
<form method="get" action="result.aspx">

<%
        while (rd.Read())
        {%>
    <p>
    <%
            qid = rd["qid"].ToString();
            question = rd["question"].ToString();
            chA = rd["chA"].ToString();
            chB = rd["chB"].ToString();
            chC = rd["chC"].ToString();
            chD = rd["chD"].ToString();
            chE = rd["chE"].ToString();

            %>
<p> <b>Q.<%Response.Write(count); %></b><% Response.Write(question); %> </p>
<p>      <label><input type="radio" name="<% Response.Write(qid);  %>" value="a"  /></label> <%Response.Write(chA); %>      </p>
<p>      <label><input type="radio" name="<% Response.Write(qid);  %>" value="b"  /></label> <%Response.Write(chB); %>      </p>
<p>      <label><input type="radio" name="<% Response.Write(qid);  %>" value="c"  /></label> <%Response.Write(chC); %>      </p>
<p>      <label><input type="radio" name="<% Response.Write(qid);  %>" value="d"  /></label> <%Response.Write(chD); %>      </p>
<p>      <label><input type="radio" name="<% Response.Write(qid);  %>" value="e"  /></label> <%Response.Write(chE); %>      </p>


    </p>
<%
        count++;  }


        %>  
    <input type="text"  value="<%Response.Write(cat);   %>" style="display:none"  name="cat" />
    <input type="submit" value="submit" />
</form> <%
    }
%>



 