<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des Adherents</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div>
		<h1>Liste des Adherents</h1>
	</div>
	<div class="container">
		<a href="add" class="btn btn-link">Ajouter un Adherent</a>
		<table class="table">
			<tr>
				<th>Numero d'adherent</th>
				<th>Civilité</th>
				<th>Nom</th>
				<th>prenom</th>
				<th>Rue</th>
				<th>Code postal</th>
				<th>Ville</th>
				<th>Article emprunté</th>
				<th>Date de naissance</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="a" items="${adherents}">
				<tr>
					<td>${a.numero}</td>
					<td>${a.civilite}</td>
					<td>${a.nom}</td>
					<td>${a.prenom}</td>
					<td>${a.adresse.numero}&nbsp;${a.adresse.rue}</td>
					<td>${a.adresse.codePostal}</td>
					<td>${a.adresse.ville}</td>
					<td></td>
<%-- 					<td><c:forEach var="ae" items="${articlesEmpruntes}"> --%>
<%-- 					<td>${ae.titre}</td> --%>
<%-- 					</c:forEach></td> --%>
					<td><fmt:formatDate value="${a.dtNaiss}" pattern="dd/MM/yyyy" /></td>
					<td><a class="btn btn-info" href="edit?numero=${a.numero}">Editer</a></td>
					<td><a class="btn btn-danger" href="delete?numero=${a.numero}">Supprimer</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>