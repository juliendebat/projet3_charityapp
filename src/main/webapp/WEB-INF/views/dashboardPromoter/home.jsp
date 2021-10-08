
<%@include file="headerPromoter.jsp"%>
<c:choose>
    <c:when test="${!empty sessionScope.promotersession}">
    
    <div class="container-fluid">
    
     <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                               Total Financement</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${sumFunding}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
    
    
			<!-- Page Heading -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						Bénévoles de l'association
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
					<c:forEach var="volonteer" items="${volunters}">

									<tr>
										<td><c:out value="${ volonteer.user.firstName }" /></td>
										<td><c:out value="${ volonteer.user.lastName }" /></td>
										<td> <td><a href="${pageContext.request.contextPath}/dashboardPromoter/mailForm/${volonteer.user.id}"><c:out value="${ volonteer.user.email }" /></a></td>
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
			<div class="container">
				<div class="row">
					<div class="col">
					<c:forEach var="event" items="${levent}">
							<li><div class="card" style="width: 18rem;">
									<div class="card-body">
										<h5 class="card-title"><td><c:out value="${ event.eventName}" /></td></h5>
										<h5 class="card-title"><td><c:out value="${ event.eventCity}" /></td></h5>
										<p class="card-text">${ event.eventCity}</p>
										
										<a href="${pageContext.request.contextPath}/dashboardPromoter/manageEvent/${event.id}" class="btn btn-primary">Gérer</a>
									<a href="${pageContext.request.contextPath}/dashboardPromoter/deleteEvent/${event.id}" class="btn btn-danger">Supprimer</a>
									</div>
								</div>								
								</li>
						</c:forEach>
					

					</div>
					<div class="col">2 of 2</div>
				</div>
			</div>
		</div>    
    </c:when>
<c:otherwise>
    <c:redirect url="/loginPromoter/${promoterinProgress.id}"/>
</c:otherwise>
</c:choose>
<%@include file="footerPromoter.jsp"%>