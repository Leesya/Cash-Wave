<p>Record saved.</p>
<%
    String loan_amount = request.getParameter("loan_amount");
    String term = request.getParameter("term");
    String income = request.getParameter("income");

    // Check for null values before parsing
    double result = 0.0;
    if (loan_amount != null && term != null && income != null) {
        try {
            result = -0.0 * Double.parseDouble(loan_amount) + 0.0023 * Double.parseDouble(term) + 0.0001 * Double.parseDouble(income) - 0.6877;
        } catch (NumberFormatException e) {
            // Handle the exception, e.g., log it or set a default value for result
            e.printStackTrace();
        }
    } else {
        // Handle the case where one or more parameters are null
        // Set a default value for result or handle it based on your requirements
    }
%>

<table border="1"> 
    <tr>
        <th>LOAN</th>
        <th></th>
    </tr>
    <tr>
        <th>Result</th>
        <td><%= result %></td>
    </tr>
</table>



    