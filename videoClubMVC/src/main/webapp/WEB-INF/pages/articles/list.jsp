<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste Article</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<a href="addDvd" class="btn btn-link">Ajouter un DVD</a> <a
			href="addBluray" class="btn btn-link">Ajouter un BluRay</a>
		<table class="table">
			<tr>
				<th>Id</th>
				<th>Type</th>
				<th>Titre</th>
				<th>Nombre de disques</th>
				<th>Adhérent</th>
				<th>Bonus</th>
				<th>3D</th>
			</tr>
			<c:forEach var="a" items="${articles}">
				<tr>
					<td>${a.numeroArticle}</td>
					<td>${a.getClass().simpleName}</td>
					<td>${a.film.titre}</td>
					<td>${a.nbDisques}</td>
					<td>${s.emprunteur.id}&nbsp;${s.emprunteur.prenom}&nbsp;${s.emprunteur.nom}</td>
					<td><c:if test="${a.getClass().simpleName == 'Dvd' }">${a.bonus}</c:if>
					</td>
					<td><c:if test="${a.getClass().simpleName == 'BluRay' }">${a.troisD}</c:if>
					</td>
					<td><a class="btn btn-info" href="edit?numeroArticle=${a.numeroArticle}">editer</a></td>
					<td><a class="btn btn-danger" href="delete?numeroArticle=${a.numeroArticle}">supprimer</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>