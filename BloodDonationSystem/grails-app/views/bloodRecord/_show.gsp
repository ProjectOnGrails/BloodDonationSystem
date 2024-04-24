<table id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Blood Quantity</th>
        <th>Status</th>
        <th>Created By</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${record}" var="records">
        <tr>
            <td>${records.id}</td>
            <td>${records.quantity}</td>
            <td>${records.status}</td>
            <td>${records.createdBy}</td>

            <td>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-record-id="${records.id}">Update</g:link>
                <g:link action="delete" id="${records.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger">Delete</button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>