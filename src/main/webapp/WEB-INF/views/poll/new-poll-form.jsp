<%--
  Created by IntelliJ IDEA.
  User: Oleh Kaminskyi
  Date: 08.05.2018
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglib.jsp" %>

<html>
<head>
    <title>New Poll</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          crossorigin="anonymous">
</head>
<body>

<div class="container">
    <h2 class="text-center">Форма опитування</h2>
    <form:form
            action="${rootURL}/poll/new-poll"
            method="post"
            modelAttribute="pollModel" class="form-horizontal">
        <div class="form-group row">
            <label class="control-label col-md-3" for="fullName">Повне ім'я</label>
            <form:input path="fullName" class="form-control  col-md-9" id="fullName"/>
        </div>
        <div class="form-group row">
            <label class="control-label col-md-3" for="age">Вік</label>
            <form:input type="number" path="age" class="form-control col-md-5"/>
        </div>
        <div class="form-group row">
            <label for="country" class="col-md-3 control-label">Країна проживання</label>
            <form:select path="country" class="form-control col-md-3">
                <form:options items="${countryListModel}"/>
            </form:select>
        </div>
        <div class="form-group row">
            <label for="gender" class="col-md-3 control-label">Стать</label>
            <form:radiobutton path="gender" value="MALE" class="form-control col-md-1"/>Чол.
            <form:radiobutton path="gender" value="FEMALE" class="form-control col-md-1"/>Жін.
            <form:radiobutton path="gender" value="UNKNOWN" class="form-control col-md-1"/>N/A
        </div>
        <div class="form-group row">
            <form:label path="email" class="col-md-3 control-label">Адрес ел.пошти</form:label>
            <form:input type="email" path="email" class="form-control col-md-6"/>
        </div>
        <div class="form-group row">
            <form:label path="education" class="col-md-3 control-label">Освіта</form:label>
            <form:select path="education" class="form-control col-md-4">
                <form:options items="${studyListModel}"/>
            </form:select>
        </div>
        <div class="form-group row">
            <form:label path="socialNetwork" class="col-md-3 control-label">Якими соц.мережаи корисутєтесь</form:label>
            <form:checkboxes path="socialNetwork" items="${socialNetworkModel}" class="col-md-7 form-control"/>
        </div>
        <div class="form-group">
            <form:label path="progLang">Улюблена мова програмування</form:label>
            <form:radiobuttons path="progLang" items="${progLangModel}" class="form-control"/>
        </div>
        <form:label path="operSystem">Якими ОС користуєтесь</form:label>
        <form:checkbox path="operSystem" value="Windows"/>Windows
        <form:checkbox path="operSystem" value="Linux"/>Linux
        <form:checkbox path="operSystem" value="Mac OS"/>Mac OS
        <form:checkbox path="operSystem" value="DOS"/>DOS <br>
        <form:label path="levelDev">Досвід у програмуванні</form:label>
        <form:select path="levelDev">
            <form:options items="${levelDevModel}"/>
        </form:select> <br>
        <form:label path="rangeDev">Ранг в професії</form:label>
        <form:select path="rangeDev">
            <form:options items="${rangeDevListModel}"/>
        </form:select> <br>
        <form:label path="technology">Технології якими володієте</form:label><form:checkboxes path="technology"
                                                                                              items="${technologyListModel}"/>
        <br>
        <form:label path="commnet">Звідки дізнались про наше опитування</form:label><form:textarea path="commnet"/>
        <br>
        <input type="submit" class="btn btn-success">
    </form:form>

</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>
