<%-- 
    Document   : temp
    Created on : Nov 19, 2021, 12:45:24 AM
    Author     : nkotchs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <% String inpTmp = request.getParameter("Temp");
            if (request.getParameter("convertToF") != null) {
                Double ans = (Double.parseDouble(inpTmp) * (9.0/5.0)) + 32;
                out.println(ans + " ℉");
            } else if (request.getParameter("convertToC") != null) {
                Double ans = (Double.parseDouble(inpTmp) - 32) * (5.0/9.0);
                out.println(ans + " ℃");
            }
        %>
    </body>
</html>
