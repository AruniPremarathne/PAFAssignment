<%--
  Created by IntelliJ IDEA.
  User: prema
  Date: 5/3/2020
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.Appointment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Appointment</title>
    <link rel="stylesheet" href="Views/bootstrap.min.css">
    <script src="Components/jquery-3.4.0.min.js"></script>
    <script src="Components/appointments.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-6">
            <h1>Appointment Management </h1>
            <form id="formAppointment" name="formAppointment">
                User ID:
                <input id="userID" name="userID" type="text"
                       class="form-control form-control-sm">

                <br>

                Doctor ID:
                <input id="doctorID" name="doctorID" type="text"
                       class="form-control form-control-sm">

                <br>

                Appointment Date:
                <input id="appointmentDate" name="appointmentDate" type="text"
                       class="form-control form-control-sm">

                <br>

                Appointment Time:
                <input id="appointmentTime" name="appointmentTime" type="text"
                       class="form-control form-control-sm">

                <br>

                <input id="btnSave" name="btnSave" type="button" value="Save"
                       class="btn btn-primary">
                <input type="hidden" id="hidAppointmentIDSave"
                       name="hidAppointmentIDSave" value="">
            </form>
            <div id="alertSuccess" class="alert alert-success"></div>
            <div id="alertError" class="alert alert-danger"></div>
            <br>
            <div id="divAppointmentsGrid">
                <%
                    Appointment appObj = new Appointment();
                    System.out.print(appObj.readAppointments());
                %>
            </div>

        </div>
    </div>
</div>

</body>
</html>

