<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Article</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<c:choose>
			<c:when test="${article.getClass().simpleName == 'Dvd'}">
				<c:url value="saveDvd" var="action"></c:url>
			</c:when>
			<c:when test="${article.getClass().simpleName == 'BluRay'}">
				<c:url value="saveBluRay" var="action"></c:url>
			</c:when>
		</c:choose>
		<form:form method="get" action="${action}" modelAttribute="article">
			<div class="form-group">
				<form:label path="numeroArticle">Id :</form:label>
				<form:input path="numeroArticle" readonly="true"
					cssClass="form-control" placeholder="generer automatiquement" />
			</div>
			<div class="form-group">
				<form:label path="film.titre">Titre :</form:label>
				<form:input path="film.titre" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="nbDisques">Nombre de disques :</form:label>
				<form:input type="number" path="nbDisques" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="adherent.id">Id adhérent :</form:label>
				<form:input type="number" path="adherent.id" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="adherent.nom">Nom de l'adhérent :</form:label>
				<form:input path="adherent.nom" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="adherent.prenom">Prénom de l'adhérent :</form:label>
				<form:input path="adherent.prenom" cssClass="form-control" />
			</div>

			<!-- spec dvd -->
			<c:if test="${article.getClass().simpleName == 'Dvd'}">
				<div class="form-group">
					<form:label path="bonus">Présence de bonus :</form:label>
					<form:checkbox path="bonus" />
				</div>
			</c:if>
			<!-- spec bluray -->
			<c:if test="${article.getClass().simpleName == 'BluRay'}">
				<div class="form-group">
					<form:label path="troisD">3D :</form:label>
					<form:checkbox path="troisD" />
				</div>
			</c:if>
			<div class="form-group">
				<button type="submit" class="btn btn-success">enregistrer</button>
				<a href="list" class="btn btn-warning">annuler</a>
			</div>
		</form:form>

	</div>


</body>
</html>