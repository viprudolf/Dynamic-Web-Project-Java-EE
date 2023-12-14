<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.jsp.PageContext" %>
<%@ page import="domain.Speciality"%>

<%
  Speciality r1 = new Speciality(1l, "A", "A1");
  Speciality r2 = new Speciality(2l, "B", "B1");
  Speciality r3= new Speciality(3l, "C", "C1");
  Speciality r4 = new Speciality(4l, "D", "D1");
  Speciality[] specialities = new Speciality[]{r1, r2, r3, r4};
  pageContext.setAttribute("specialities", specialities);
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
      <h3>Список специальностей</h3>
      <table class="table">
        <thead>
        <th scope="col">Код</th>
        <th scope="col">Специальность</th>
        <th scope="col">Редактировать</th>
        <th scope="col">Удалить</th>
        </thead>
        <tbody>
        <c:forEach var="person" items="${specialities}">
          <tr>
            <td>${person.GetId()}</td>
            <td>${person.GetNameSpeciality()}</td>
            <td width="20"><a href="#" role="button"
                              class="btn btn-outline-primary">
              Редактировать</a>
            </td>
            <td width="20"><a href="#" role="button"
                              class="btn btn-outline-primary">
              Удалить</a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
    <div class="col-4 border px-4">
      <form method="POST" action="">
        <h3>Новая специализация</h3>
        <br>
        <div class="mb-3 row">
          <label for="formName" class="col-sm-3 col-form-label">Название</label>
          <div class="col-sm-7">
            <input type="text" class="form-control"
                   id="staticFormName"name="formName" />
          </div>
        </div>
        <div class="mb-3 row">
          <label for="profileName" class="col-sm-3 col-form-label">Профиль</label>
          <div class="col-sm-7">
            <input type="text" class="form-control"
                   id="staticProfileName"name="profileName" />
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