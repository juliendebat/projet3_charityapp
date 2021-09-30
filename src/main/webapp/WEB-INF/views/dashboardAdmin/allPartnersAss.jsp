<%@include file="headerAdmin.jsp"%>
<c:choose>
	<c:when test="${!empty sessionScope.assos}">
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
									<th>Nom</th>
									<th>Prenom</th>
									<th>Age</th>
									<th>Adresse</th>
									<th>Ville</th>
									<th>Mail</th>
									<th>Financement</th>
									<th>Societe/Association</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="partner" items="${partnerlist}">

									<tr>
										<td><c:out value="${ partner.lastName }" /></td>
										<td><c:out value="${ partner.firstName }" /></td>
										<td><c:out value="${ partner.age }" /></td>
										<td><c:out value="${ partner.address }" /></td>
										<td><c:out value="${ partner.town }" /></td>
										<td><c:out value="${ partner.email }" /></td>
										<td><c:out value="${ partner.partner.funding }" /></td>

										<td><a
											href="${pageContext.request.contextPath}/editUser/${user.id}">Edit</a></td>

										<td><a
											href="${pageContext.request.contextPath}/deleteUser/${user.id}">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
	</c:when>
	<c:otherwise>
//redirection page login
        <br />
	</c:otherwise>
</c:choose>
<%@include file="footerAdmin.jsp"%>


