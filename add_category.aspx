<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="add_category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <body>
   <form id="form1" runat="server">
   
      
         <br />
       <label>Category name<input type="text" id="cat_name"  runat="server"/></label><br />
      <label>Description <input type="text" id="desc"  runat="server"/></label><br />

         <asp:FileUpload ID="FileUpload1" runat="server" />
         <br /><br />
         <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click"  Text="Save" style="width:85px" />
         <br /><br />
         <asp:Label ID="lblmessage" runat="server" />
      </div>
      
   </form>
</body>
</body>
</html>
