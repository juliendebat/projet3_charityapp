<%@include file="headerAdmin.jsp"%>

<c:choose>
	<c:when test="${!empty sessionScope.assos}">
		<div class="container-fluid">
			<!-- Page Heading -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						Evènements
					</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Nom</th>
									<th>Description</th>
									<th>Category</th>
									<th>Ville</th>
									<th>Pays</th>
									<th>Date de début</th>
									<th>Date de fin</th>
									
									<th>Bénévoles</th>
									<th>Supprimer</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="event" items="${events}">

									<tr>
										<td><c:out value="${ event.eventName }" /></td>
										<td><c:out value="${ event.eventDescription }" /></td>
										
										<td><c:out value="${ event.eventCategory }" /></td>
										<td><c:out value="${ event.eventCity}" /></td>
										<td><c:out value="${ event.eventCountry }" /></td>
										<td><c:out value="${ event.eventDateStart }" /></td>
									
										<td><c:out value="${ event.eventDateEnd }" /></td>
										

										<td><a
											href="${pageContext.request.contextPath}/dashboardAdmin/allVoluntersByEvent/${event.id}">Afficher Bénévoles</a></td>

										
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


