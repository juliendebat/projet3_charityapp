
<%@include file="headerPromoter.jsp"%>
<c:choose>
    <c:when test="${!empty sessionScope.promotersession}">
    
    <div class="container-fluid">
			<!-- Page Heading -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						Partenaires de L'Association ${ sessionScope.assos.associationName }
					</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
								<th>Nom de l'évènement</th>
									<th>Categorie</th>
									<th>Ville</th>
									<th>Pays</th>
									<th>Date début</th>
									<th>Date fin</th>
									<th>Description</th>
									<th>Edit</th>							
								</tr>
							</thead>
							<tbody>
								<c:forEach var="event" items="${levent}">

									<tr>
										<td><c:out value="${ event.eventName}" /></td>
										<td><c:out value="${ event.eventCity}" /></td>
										<td><c:out value="${ event.eventCountry}" /></td>
										<td><c:out value="${ event.eventDateStart}" /></td>
										<td><c:out value="${ event.eventDateEnd }" /></td>
										<td><c:out value="${ event.eventDescription }" /></td>
										
                                         
										<td><a
											href="${pageContext.request.contextPath}/dashboardPromoter/editEvent/${event.id}">Edit</a></td>

										<td><a
											href="${pageContext.request.contextPath}/dashboardPromoter/deleteEvent/${event.id}">Delete</a></td>
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
    <c:redirect url="/loginAssociation"/>
</c:otherwise>
</c:choose>
<%@include file="footerPromoter.jsp"%>