<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#patientModal" id="addPatient">
    Create Patient
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="patientModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="patientModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="patientModalLabel">Add Patient</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form action="save" method="POST">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="bloodgroup">Blood Group:</label>
                            <select class="form-control" id="bloodgroup" name="bloodgroup" required>
                                <g:each in="${com.BloodDonationSystem.BloodGroup.values()}" var="bloodGroup">
                                    <option value="${bloodGroup}">${bloodGroup}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="quantity_req">Quantity Required:</label>
                            <input type="number" class="form-control" id="quantity_req" name="quantity_req" required>
                        </div>
                        <div class="form-group">
                            <label for="age">Age:</label>
                            <input type="number" class="form-control" id="age" name="age" required>
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender:</label>
                            <select class="form-control" id="gender" name="gender" required>
                                <g:each in="${com.BloodDonationSystem.Gender.values()}" var="gender">
                                    <option value="${gender}">${gender}</option>
                                </g:each>
                            </select>

                        </div>
                        <div class="form-group">
                            <label for="hospitalname">Hospital Name:</label>
                            <input type="text" class="form-control" id="hospitalname" name="hospitalname" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary" value="Submit">Save</button>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>