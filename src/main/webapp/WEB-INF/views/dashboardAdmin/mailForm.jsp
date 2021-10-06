<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="headerAdmin.jsp"%>
<c:choose>
    <c:when test="${!empty sessionScope.assos}">
  
<div class="card">
  <div class="card-header">
    Envoyer votre email
  </div>
  <div class="card-body">
   <form:form method="POST" action="" >
    <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Adresse email</label>
  <input type="email" class="form-control" id="exampleFormControlInput1" value="${userMail}" placeholder="">
</div>
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label"></label>
  <input name="subject" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Objet">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Zone de texte</label>
  <textarea name="message" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
<input type="submit" value="Envoyer" class="btn btn-primary"/>
</form:form >
    
  </div>
</div>
</c:when>
<c:otherwise>
    <c:redirect url="/loginAssociation"/>
</c:otherwise>
</c:choose>
<%@include file="footerAdmin.jsp"%>
