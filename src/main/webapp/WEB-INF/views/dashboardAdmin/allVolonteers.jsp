<%@include file="headerAdmin.jsp"%>

<c:choose>
	<c:when test="${!empty sessionScope.assos}">
		<div class="container-fluid">
			<!-- Page Heading -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						Bénévoles
					</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Nom</th>
									<th>Prenom</th>
									<th>email</th>
									<th>N° Télephone</th>
									<th>Age</th>
									<th>Adresse</th>
									<th>Complement d'adresse</th>
									<th>Code postal</th>
									<th>Ville</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="volonteer" items="${volonteerslist}">

									<tr>
										<td><c:out value="${ volonteer.user.firstName }" /></td>
										<td><c:out value="${ volonteer.user.lastName }" /></td>
										<td> <td><a href="${pageContext.request.contextPath}/dashboardAdmin/mailForm/${users.id}"><c:out value="${ volonteer.user.email }" /></a></td>
										<td><c:out value="${ volonteer.user.mobilePhone }" /></td>
										<td><c:out value="${ volonteer.user.age }" /></td>
										<td><c:out value="${ volonteer.user.address }" /></td>
										<td><c:out value="${ volonteer.user.complementaryAddress }" /></td>
										<td><c:out value="${ volonteer.user.zipCode }" /></td>
										<td><c:out value="${ volonteer.user.town }" /></td>
									
																		
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</c:when>
	<c:otherwise>
<c:redirect url="/dashboardAdmin/loginAssociation"/>    
	</c:otherwise>
</c:choose>
<%@include file="footerAdmin.jsp"%>


