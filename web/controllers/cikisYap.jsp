<%-- 
    Document   : cikisYap
    Created on : 17.Nis.2018, 15:11:54
    Author     : oniketya
--%>
<% 
    session.removeAttribute("kisi");
    response.sendRedirect("../index.jsp?logout=true");
%>  

