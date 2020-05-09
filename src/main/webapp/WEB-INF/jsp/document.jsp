<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	           
<div class="modal fade" id="documentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h6 class="modal-title" id="exampleModalLabel">Document List</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <table class="table table-sm">
		      <tbody>
			      <c:forEach var="d" items="${documents}">
				      	<tr>
				      		<td>
						      	<form:form action="/document/delete#active" method="POST">
										<input type="hidden" value="${d.id}" name="id">
										<input type="hidden" value="${d.groupId}" name="groupId">
										<input type="hidden" value="${pageName}" name="pageName">
										${d.fileName}
										<button type="submit" class="btn btn-danger float-right" title="Delete this!">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
								</form:form>
				      		</td>
			      		</tr>
					</c:forEach>
		      </tbody>
	      </table>
      </div>
    </div>
  </div>
</div>