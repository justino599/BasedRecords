<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%
// Get the current list of products
@SuppressWarnings({"unchecked"})
HashMap<String, ArrayList<Object>> productList = (HashMap<String, ArrayList<Object>>) session.getAttribute("productList");

String id = request.getParameter("id");

// Deleting the product from the list
Object product = (ArrayList<Object>) productList.get(id);
productList.remove(id);

session.setAttribute("productList", productList);
%>
<jsp:forward page="cart.jsp" />