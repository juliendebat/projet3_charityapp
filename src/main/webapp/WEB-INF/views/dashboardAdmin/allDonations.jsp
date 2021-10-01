<%@include file="headerAdmin.jsp"%>

<c:choose>
	<c:when test="${!empty sessionScope.assos}">
		<div class="container-fluid">
			<!-- Page Heading -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						Dons de L'Association ${ sessionScope.assos.associationName }
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
									<th>Age</th>
									<th>Adresse</th>
									<th>Ville</th>
									<th>Mail</th>
									<th>Mobile</th>
									<th>Montant :</th>
									<th>Etat du don:</th>
									<th>Enregistrer</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="donation" items="${donations}">

									<tr>
										<td><c:out value="${ donation.user.lastName }" /></td>
										<td><c:out value="${ donation.user.firstName }" /></td>
										<td><c:out value="${ donation.user.age }" /></td>
										<td><c:out value="${ donation.user.address }" /></td>
										<td><c:out value="${ donation.user.town }" /></td>
										<td><c:out value="${ donation.user.email }" /></td>
										<td><c:out value="${ donation.user.mobilePhone }" /></td>
										<td><c:out value="${ donation.amount }" /></td>
										<td><c:out value="${ donation.state }" /></td>

										<td><a
											href="${pageContext.request.contextPath}/dashboardAdmin/checkDonation/${donation.id}">Enregistrer</a></td>

										<td><a
											href="${pageContext.request.contextPath}/dashboardAdmin/cancelDonation/${donation.id}">Delete</a></td>
									</tr>
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


