<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<h3 class="titre3">Ajouter une demande de validation</h3>

<form:form modelAttribute="formAjoutDctap" action="doajout"
	method="post" id="formulaireAjoutDCTAP">
	<form:errors path="*" cssClass="errors" />

	<div class="section">
		<fieldset>
			<div class="form-row">
				<label for="anneeScolaire">Ann�e scolaire courante :</label>
				<div class="input">
					<form:input path="anneeScolaire" disabled="true" />
				</div>
			</div>

			<div class="form-row">
				<label for="datepicker">Date : </label>
				<div class="input">
					<form:input id="datepicker" path="date" />
				</div>
			</div>

			<div class="form-row">
				<label for="minutes">Temps d'aide personnalis�e (minutes) :
				</label>
				<div class="input">
					<form:input path="minutes" />
				</div>
			</div>

			<div class="form-row">
				<label for="profs">Les professeurs :</label>
				<form:select path="profId" items="${lesProfs}" itemValue="id"
					itemLabel="nom"></form:select>
			</div>

			<div class="form-row">
				<label for="accPers">Type d'aide personnalis�e : </label> <select
					id="accPersId" name="accPersId" onchange="testAcc()">
					<c:forEach items="${lesAP}" var="ap">
						<option value="${ap.id}" label="${ap.nom}">${ap.nom}</option>
					</c:forEach>
					<option value="0" label="Autre">Autre</option>
				</select>
			</div>

			<div class="from-row" id="inputAcc"
				style="display: none; visibility: hidden;">
				<label for="accPersNom">Aide personnalis�e : </label>
				<form:input path="accPersNom" />
			</div>
		</fieldset>

		<form:hidden path="eleveId" />
		<form:hidden path="etat" />

		<div id="buttonGroup">
			<a href="index" style="text-decoration: none"><input
				type="button" value="Retour"></a> <input type="submit"
				value="Ajouter" />

		</div>
	</div>
</form:form>