<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editer un adherent</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div>
			<h1>Editer un adherent</h1>
		</div>

		<form:form method="get" action="save" modelAttribute="adherents">
			<form:errors></form:errors>
			<form:hidden path="version" />
			<div class="form-group">
				<form:label path="numero">Numero d'adherent:</form:label>
				<form:input path="numero" type="number" readonly="true"
					cssClass="form-control" placeholder="generer automatiquement" />
			</div>
			<div class="form-group">
				<form:label path="prenom">Prenom:</form:label>
				<form:input path="prenom" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="nom">Nom:</form:label>
				<form:input path="nom" cssClass="form-control" />
				<form:errors path="nom" cssClass="alert alert-danger" element="div"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="civilite">Civilité</form:label>
				<form:select path="civilite" cssClass="form-control">
					<form:options items="${titre}" itemLabel="titre" />
				</form:select>
			</div>
			<div class="form-group">
				<form:label path="adresse.numero">Numero:</form:label>
				<form:input type="number" path="adresse.numero"
					cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="adresse.rue">Rue:</form:label>
				<form:input path="adresse.rue" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="adresse.codePostal">Code postal:</form:label>
				<form:input path="adresse.codePostal" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="adresse.ville">Ville:</form:label>
				<form:input path="adresse.ville" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="dtNaiss">Date de naissance::</form:label>
				<form:input type="date" path="dtNaiss" cssClass="form-control" />
				<form:errors path="dtNaiss"></form:errors>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success">Enregistrer</button>
				<a href="list" class="btn btn-warning">Annuler</a>
			</div>
		</form:form>

	</div>
</body>
</html>