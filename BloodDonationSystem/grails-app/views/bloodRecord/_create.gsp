<%@ page import="com.BloodDonationSystem.Status" %>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#bloodRecordModal" id="addBloodRecord">
    Create Blood Record
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="bloodRecordModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="bloodRecordModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="bloodRecordModalLabel">Add Blood Record</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form action="save">
                        <div class="form-group">
                            <label for="quantity">Blood Quantity:</label>
                            <input type="number" class="form-control" id="quantity" name="quantity" required>
                        </div>
                        <div class="form-group">
                            <label for="status">Status:</label>
                            <select class="form-control" id="status" name="status" required>
                                <option value="">Select</option>
                                <g:each in="${Status.values()}" var="status">
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
