<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.jsp.PageContext" %>
<%@ page import="domain.Speciality"%>
<%@ page import="domain.Qualification"%>
<%@ page import="domain.FormEducation"%>
<%@ page import="domain.Group" %>

<%
  FormEducation fe1 = new FormEducation(1L, "Дневная");
  FormEducation fe2 = new FormEducation(2L, "Вечерняя");
  FormEducation fe3 = new FormEducation(3L, "Очная");
  FormEducation fe4 = new FormEducation(4L, "Заочная");
  FormEducation[] formEducations = new FormEducation[]{fe1, fe2, fe3, fe4};
  pageContext.setAttribute("formEducations", formEducations);

  Qualification q1 = new Qualification(1l, "A");
  Qualification q2 = new Qualification(2l, "B");
  Qualification q3= new Qualification(3l, "C");
  Qualification q4 = new Qualification(4l, "D");
  Qualification[] qualifications = new Qualification[]{q1, q2, q3, q4};
  pageContext.setAttribute("qualifications", qualifications);

  Speciality s1 = new Speciality(1l, "A", "A1");
  Speciality s2 = new Speciality(2l, "B", "B1");
  Speciality s3= new Speciality(3l, "C", "C1");
  Speciality s4 = new Speciality(4l, "D", "D1");
  Speciality[] specialities = new Speciality[]{s1, s2, s3, s4};
  pageContext.setAttribute("specialities", specialities);

  Group g1 = new Group(1l, "Факультет1","Имя1", 1, 1, 1, 1L, s1, 1L, q1, 1L, fe1);
  Group g2 = new Group(1l, "Факультет2","Имя2", 2, 2, 2, 2L, s2, 2L, q2, 2L, fe2);
  Group g3 = new Group(1l, "Факультет3","Имя3", 3, 3, 3, 3L, s3, 3L, q3, 3L, fe3);
  Group g4 = new Group(1l, "Факультет4","Имя4", 4, 4, 4, 4L, s4, 4L, q4, 4L, fe4);
  Group[] persons = new Group[]{g1, g2, g3, g4};
  pageContext.setAttribute("persons", persons);
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
        <th scope="col">Факультет</th>
        <th scope="col">Имя</th>
        <th scope="col">Курс</th>
        <th scope="col">Количество студентов</th>
        <th scope="col">Количество подгрупп</th>
        <th scope="col">Код специальности</th>
        <th scope="col">Специальность</th>
        <th scope="col">Код квалификации</th>
        <th scope="col">Квалификация</th>
        <th scope="col">Код формы обучения</th>
        <th scope="col">Форма обучения</th>
        <th scope="col">Редактировать</th>
        <th scope="col">Удалить</th>
        </thead>
        <tbody>
        <c:forEach var="person" items="${persons}">
          <tr>
            <td>${person.GetId()}</td>
            <td>${person.GetFaculty()}</td>
            <td>${person.GetName()}</td>
            <td>${person.GetCourse()}</td>
            <td>${person.GetCountStudent()}</td>
            <td>${person.GetCountSubgroups()}</td>
            <td>${person.GetIdSpeciality()}</td>
            <td>${person.GetSpeciality()}</td>
            <td>${person.GetIdQualification()}</td>
            <td>${person.GetQualification()}</td>
            <td>${person.GetIdFormEducation()}</td>
            <td>${person.GetFormEducation()}</td>
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
        <h3>Новая группа</h3>
        <br>
        <div class="mb-3 row">
          <label for="propFaculty" class="col-sm-3 col-form-label">Факультет</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" id="staticPropFaculty" name="propFaculty" />
          </div>
        </div>
        <div class="mb-3 row">
          <label for="propName" class="col-sm-3 col-form-label">Название</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" id="staticPropName" name="propName" />
          </div>
        </div>
        <div class="mb-3 row">
          <label for="propCourse" class="col-sm-3 col-form-label">Курс</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" id="staticPropCourse" name="propCourse" />
          </div>
        </div>
        <div class="mb-3 row">
          <label for="propCountStudent" class="col-sm-3 col-form-label">Количество студентов</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" id="staticPropCountStudent" name="propCountStudent" />
          </div>
        </div>
        <div class="mb-3 row">
          <label for="propCountSubgroups" class="col-sm-3 col-form-label">Количество подгрупп</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" id="staticPropCountSubgroups" name="propCountSubgroups" />
          </div>
        </div>

        <div class="mb-3 row">
          <label for="speciality" class="col-sm-3 col-form-label">Специальность</label>
          <div class="col-sm-7">
            <select name="speciality" class="form-control">
              <option>Выберите специальность</option>
              <c:forEach var="speciality" items="${specialities}">
                <option value="${speciality}">
                  <c:out value="${speciality.GetNameSpeciality()}"></c:out>
                </option>
              </c:forEach>
            </select>
          </div>
        </div>

        <div class="mb-3 row">
          <label for="qualification" class="col-sm-3 col-form-label">Квалификация</label>
          <div class="col-sm-7">
            <select name="qualification" class="form-control">
              <option>Выберите квалификацию</option>
              <c:forEach var="qualification" items="${qualifications}">
                <option value="${qualification}">
                  <c:out value="${qualification.GetNameQualification()}"></c:out>
                </option>
              </c:forEach>
            </select>
          </div>
        </div>

        <div class="mb-3 row">
          <label for="formEducations" class="col-sm-3 col-form-label">Формы обучения</label>
          <div class="col-sm-7">
            <select name="formEducation" class="form-control">
              <option>Выберите форму обучения</option>
              <c:forEach var="formEducation" items="${formEducations}">
                <option value="${formEducation}">
                  <c:out value="${formEducation.GetNameForm()}"></c:out>
                </option>
              </c:forEach>
            </select>
          </div>
        </div>

        <p><br>
          <button type="submit" class="btn btn-primary">Добавить</button>
        </p>
      </form>
    </div>
  </div>
</div>
<jsp:include page="/views/footer.jsp" />
</div>
</body>
</html>