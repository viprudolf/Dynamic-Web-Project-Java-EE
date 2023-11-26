<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.jsp.PageContext" %>
<%@ page import="domain.Qualification"%>

<%
    Qualification r1 = new Qualification(1l, "A");
    Qualification r2 = new Qualification(2l, "B");
    Qualification r3= new Qualification(3l, "C");
    Qualification r4 = new Qualification(4l, "D");
    Qualification[] qualifications = new Qualification[]{r1, r2, r3, r4};
    pageContext.setAttribute("qualifications", qualifications);
%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Сотрудники</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Persons</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- jQuery -->
    <script defer src="js/jquery.min.js"></script>
    <!-- Bootstrap JS + Popper JS -->
    <script defer src="js/bootstrap.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.mi
n.js"></script>
</head>
<body>
<body>
<div class="container-fluid">
    <jsp:include page="/views/header.jsp" />
    <div class="container-fluid">
        <div class="row justify-content-start ">
            div class="col-8 border bg-light px-4">
            <h3>Список сотрудников</h3>
            <table class="table">
                <thead>
                <th scope="col">Код</th>
                <th scope="col">Квалификация</th>
                <th scope="col">Редактировать</th>
                <th scope="col">Удалить</th>
                </thead>
                <tbody>
                <c:forEach var="person" items="${qualifications}">
                    <tr>
                        <td>${person.GetId()}</td>
                        <td>${person.GetNameQualification()}</td>
                        <td width="20"><a href="#" role="button"
                                          class="btn btn-outline-primary">
                            <img alt="Редактировать"
                                 src="images/icon-edit.png"></a>
                        </td>
                        <td width="20"><a href="#" role="button"
                                          class="btn btn-outline-primary">
                            <img alt="Удалить"
                                 src="images/icon-delete.png"></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-4 border px-4">
            <form method="POST" action="">
                <h3>Новая квалификация обучения</h3>
                <br>
                <div class="mb-3 row">
                    <label for="formName"
                           class="col-sm-3 col-form-label">Название</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control"
                               id="staticFormName"name="formName" />
                    </div>
                </div>
                <p> <br>
                    <button type="submit"
                            class="btn btn-primary">Добавить</button>
                </p>
            </form>
        </div>
    </div>
</div>
<jsp:include page="/views/footer.jsp" />
</div>
</body>
</html>