<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<a href="add" class="btn btn-link">Ajouter un film</a>
			
		<table class="table">
			<tr>
				<th>Id</th>
				<th>Titre</th>
				<th>Réalisateur</th>
				<th>Date de sortie</th>
			</tr>
			<c:forEach var="f" items="${films}">
				<tr>
					<td>${f.id}</td>
					<td>${f.titre}</td>
					<td>${f.realisateur.prenom}&nbsp;${f.realisateur.nom}</td>
					<td><fmt:formatDate value="${f.dateSortie}" pattern="dd/MM/yyyy"/></td>
					<td><a class="btn btn-info" href="edit?id=${a.id}">editer</a></td>
					<td><a class="btn btn-danger" href="delete?id=${a.id}">supprimer</a></td>
					<td>${a.adherent.id}&nbsp;${a.adherent.nom}&nbsp;${a.adherent.prenom}</td>
				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>