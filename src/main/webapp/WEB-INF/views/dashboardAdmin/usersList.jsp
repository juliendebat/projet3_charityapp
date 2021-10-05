<%@include file="headerAdmin.jsp"%>
<c:choose>
    <c:when test="${!empty sessionScope.assos}">
<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						utilisateurs de L'Association ${ sessionScope.assos.associationName }
					</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">

    <table class="table table-striped table-bordered" id="dataTable" style="width:100%" >
        <thead>
        <tr>
            <th>Id</th>
            <th>Nom</th>
            <th>Prenom</th>
            <th>email</th>
            <th>Age</th>
            <th>Adresse</th>
            <th>Complement d'adresse</th>
            <th>Code postal</th>
            <th>Ville</th>
            <th>N° Télephone</th>
        </tr>
        </thead>


        <tbody>
        <c:forEach var="users" items="${usersList}">
            <tr>
                <td>${users.id}</td>
                <td>${users.firstName}</td>
                <td>${users.lastName}</td>
                <td><a href="${pageContext.request.contextPath}/dashboardAdmin/mailForm/${users.id}">${users.email}</a></td>
                <td>${users.age}</td>
                <td>${users.address}</td>
                <td>${users.complementaryAddress}</td>
                <td>${users.zipCode}</td>
                <td>${users.town}</td>
                <td>${users.mobilePhone}</td>
             </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
    </div>
</div>


</c:when>
<c:otherwise>
    <c:redirect url="/loginAssociation"/>
</c:otherwise>
</c:choose>
<%@include file="footerAdmin.jsp"%>
