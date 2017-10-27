<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>

<% Server.Execute("header.aspx"); %>
 
<!DOCTYPE html>
 <% string abc = "cat";
     string cat = Request.QueryString[abc];
     String constring = "Server=127.0.0.1;database=gs;Port=7172;Uid=root;password=root";
     MySqlConnection conn1 = new MySqlConnection(constring);
     MySqlCommand command1 = conn1.CreateCommand();
     command1.CommandText = "select * from quizquestion where cat='" + cat + "'";
     int count = 0;
     conn1.Open();

     MySqlDataReader rd = command1.ExecuteReader();
     while (rd.Read()) {
         string qid = rd["qid"].ToString();
         string ans = rd["answer"].ToString();
         if (Request.QueryString[qid].Equals(ans))
         {
             count++;
         }
     }
     Response.Write(count);

     %>

