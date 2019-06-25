<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<form:form method="get" action="save" modelAttribute="films">
			<div class="form-group">
				<form:label path="id">Id :</form:label>
				<form:input path="id" readonly="true"
					cssClass="form-control" placeholder="generer automatiquement" />
			</div>
			<div class="form-group">
				<form:label path="titre">Titre :</form:label>
				<form:input path="titre" cssClass="form-control" />
			</div>
			<%-- <div class="form-group">
				<form:label path="realisateurs.key.realisateur.prenom">Prenom du realisateur :</form:label>
				<form:input path="realisateurs.key.realisateur.prenom" cssClass="form-control" />
			</div> --%>
			<%-- <div class="form-group">
				<form:label path="f.realisateurs.nom">Nom du realisateur :</form:label>
				<form:input path="f.realisateurs.nom" cssClass="form-control" />
			</div> --%>
			
			<div class="form-group">
			<form:label path="dateSortie">Date de sortie</form:label>
			<form:input type="date" path="dateSortie" cssClass="form-control"/>
			<form:errors path="dateSortie"></form:errors>
			</div>
			
			<div class="form-group">
				<button type="submit" class="btn btn-success">Enregistrer</button>
				<a href="list" class="btn btn-warning">Annuler</a>
			</div>
		</form:form>

	</div>


</body>
</html>