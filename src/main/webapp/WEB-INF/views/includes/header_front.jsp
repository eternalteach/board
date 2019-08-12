<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Core Digital Technology</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- rootContextPath -->
  <c:set var="contextPath" value="<%=request.getContextPath() %>"/>
  <!-- use contextPath word : ${contextPath} -->
  <!-- Place favicon.ico and apple-touch-icon(s) in the root directory -->
  <link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico">

  <!-- stylesheets -->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/dist/theme.min.css" />

  <!-- javascript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="${contextPath}/resources/dist/theme.min.js"></script>
</head>
<body>
  <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <!--[if lt IE 8]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
  <![endif]-->