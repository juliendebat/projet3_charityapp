


<%@include file="headerAdmin.jsp"%>

<c:choose>
    <c:when test="${!empty sessionScope.assos}">
<script></script>
<div class="container">

        <table class="table table-striped table-bordered" id="usersList" style="width:100%" >
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
            <c:forEach var="usersList" items="${usersList}">
                <tr>
                    <td>${usersList.id}</td>
                    <td>${usersList.firstName}</td>
                    <td>${usersList.lastName}</td>
                    <td>${usersList.email}</td>
                    <td>${usersList.age}</td>
                    <td>${usersList.address}</td>
                    <td>${usersList.complementaryAddress}</td>
                    <td>${usersList.zip}</td>
                    <td>${usersList.town}</td>
                    <td>${usersList.mobilePhone}</td>

                        <%-- 					<td>${user.userName}</td> --%>
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

	</c:when>
	<c:otherwise>
<c:redirect url="/LoginAssociation2"/>
        <br />
	</c:otherwise>
</c:choose>



<%@include file="footerAdmin.jsp"%>
