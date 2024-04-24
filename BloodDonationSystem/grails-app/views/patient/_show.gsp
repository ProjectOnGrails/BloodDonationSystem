<table id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>BloodGroup</th>
        <th>Quantity Required</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Hospital</th>
        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${patient}">
        <tr>
            <td>${patient.id}</td>
            <td>${patient.name}</td>
            <td>${patient.bloodgroup}</td>
            <td>${patient.quantity_req}</td>
            <td>${patient.age}</td>
            <td>${patient.gender}</td>
            <td>${patient.hospitalname}</td>

            <td>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${patient.id}">Update</g:link>
                <g:link action="delete" id="${patient.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger">Delete</button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>