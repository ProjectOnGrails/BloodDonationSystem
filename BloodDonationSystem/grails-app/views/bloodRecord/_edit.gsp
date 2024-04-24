<%@ page import="com.BloodDonationSystem.Status" %>
<!-- Modal -->
<div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="editModalLabel">Add Blood Record</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form action="update" id="${data.id}">
                        <div class="form-group">
                            <label >Record Id:
                                <input type="number" name="identity" class="form-control" value="${data.id}" disabled="disabled"/>
                            </label>
                            <br/>
                            <label for="quantity">Blood Quantity:</label>
                            <input type="number" class="form-control" id="quantity" name="quantity" value="${data.quantity}" required>
                        </div>
                        <div class="form-group">
                            <label for="status">Status:</label>${data.status}
                            <select class="form-control" id="status" name="status" required>
                                <option value="${data.status}">${data.status}</option>
                                <g:each in="${Status.values()}" var="status" >
                                    <option value="${status}">${status}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" value="Submit">Save</button>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
