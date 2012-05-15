<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


	<h1>Ajouter une demande</h1>

	<form:form modelAttribute="formAjoutDctap" action="doajout"
		method="post" id="formulaireAjoutDCTAP">
		<form:errors path="*" cssClass="errors" />

		<div class="section">
			<fieldset>
				<div class="form-row">
					<div class="input">
						<form:label path="anneeScolaire">Ann�e scolaire courante : </form:label>
						<br>
						<form:input path="anneeScolaire" disabled="true" />
					</div>
				</div>
				
				<br/>                                             
				
				
				<div class="form-row">
					<label for="datepicker">Date : </label>
					<div class="input">
						<form:input id="datepicker" path="date" />
					</div>
				</div>
				
				<br/>
				
				<div class="form-row">
					<label for="minutes">Temps d'aide personnalis�e (minutes) : </label>
					<div class="input">
						<form:input path="minutes" />
					</div>
				</div>
				
				<br/>
				
			
				<div class="form-row">
					<label for="profs">Les professeurs :</label><br>
					<form:select path="profId" items="${lesProfs}" itemValue="id"
						itemLabel="nom"></form:select>
				</div>
				
				<br/>
				
				<div class="form-row">
					<label for="accPers">Type d'aide personnalis�e : </label><br>
					<form:select path="accPersId" items="${lesAP}" itemValue="id"
						itemLabel="nom"></form:select>
				</div>
			</fieldset>

			<form:hidden path="eleveId" />
			<form:hidden path="etat" />
			
			<br/>
			
			<div id="buttonGroup">
				<a href="index" style="text-decoration:none"><input type="button" value="Retour"></a>
				<input type="submit" value="Ajouter" />
				
			</div>
		</div>
	</form:form>
