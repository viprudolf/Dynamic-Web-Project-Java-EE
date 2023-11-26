<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.jsp.PageContext" %>
<%@ page import="domain.FormEducation"%>

<%
    FormEducation fe1 = new FormEducation(1L, "Дневная");
    FormEducation fe2 = new FormEducation(2L, "Вечерняя");
    FormEducation fe3 = new FormEducation(3L, "Очная");
    FormEducation fe4 = new FormEducation(4L, "Заочная");

    FormEducation[] formEducations = new FormEducation[]{fe1, fe2, fe3, fe4};
    int length = formEducations.length;
    pageContext.setAttribute("formEducations", formEducations);
%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Должности</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Roles</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- jQuery -->
    <script defer src="js/jquery-3.6.4.js"></script>
    <!-- Bootstrap JS + Popper JS -->
    <script defer src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="/views/header.jsp" />
    <div class="container-fluid">
        <div class="row justify-content-start ">
            <div class="col-8 border bg-light px-4">
                <h3>Список должностей</h3>
                <table class="table">
                    <thead>
                    <th scope="col">Код</th>
                    <th scope="col">Форма обучения</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="formEducation" items="${formEducations}">
                        <tr>
                            <td>${formEducation.GetId()}</td>
                            <td>${formEducation.GetNameForm()}</td>
                            <td width="20"><a href="#" role="button" class="btn btn-outline-primary">
                                <img alt="Редактировать" src="images/icon-edit.png"></a></td>
                            <td width="20"><a href="#" role="button" class="btn btn-outline-primary">
                                <img alt="Удалить" src="images/icon-delete.png"></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-4 border px-4">
                <form method="POST" action="">
                    <h3>Новая форма обучения</h3>
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