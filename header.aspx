<%@ Page Language="C#" AutoEventWireup="true" CodeFile="header.aspx.cs" Inherits="header" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>

 
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


    <%
        string cat = "";
        String constring = "Server=127.0.0.1;database=gs;Port=7172;Uid=root;password=root";
        MySqlConnection conn = new MySqlConnection(constring);
        MySqlCommand command = conn.CreateCommand();
        command.CommandText = "select * from category";
        conn.Open();
        MySqlDataReader rd = command.ExecuteReader();

        %>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Knowledge Seeker</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
   <%
       
               while (rd.Read()) {
            cat = rd["catname"].ToString();
           %>
      <li><a href="view.aspx?cat=<%Response.Write(cat);%>"><% Response.Write(cat); %></a></li>
        
        
        <%
        }

       %>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Inverted Navbar</h3>
  <p>An inverted navbar is black instead of gray.</p>
</div>

</body>
</html>
