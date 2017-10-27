<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_question.aspx.cs" Inherits="Bin_add_question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>

</head>
<body>
    <form action="add_question1.aspx" method="get">
        <label>Category<input type="text" name="cat" id="cat"  /></label><br />
        <label>Sub Category<input type="text" name="sub" id="sub"  /></label><br />
        <label>Question<input type="text" name="ques" id="ques"  /></label><br />
        <label>Number of Choices<select name="choice" id="choice"><option>2</option><option>3</option><option>4</option><option>5</option></select></label>
       <br /> <label>A.<input type="text" required name="A" id="A"  /></label><br />
        <label>Answers<input type="text"  required name="answer" id="answer"   /></label><br />

        <label>B.<input type="text"  required name="B" id="B"  /></label><br />
        <label>C.<input type="text" name="C" id="C"  /></label><br />
        <label>D.<input type="text" name="D" id="D"  /></label><br />
        <label>E.<input type="text" name="E" id="E"  /></label><br />
        <input type="submit" value="add" />


    </form>
   </body>
     </html>
