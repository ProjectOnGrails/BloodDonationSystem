<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="layout" content="main"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <title>Document</title>
</head>

<body>
<!-- Include jQuery and DataTables CSS -->
<!-- Include jQuery and DataTables JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<g:render template="/Shared/message"/>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="addRole">
    Create Role
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Role Creation</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form controller="role" action="save" method="POST">
                        <div class="form-group">
                            <label >Role Id:
                                <input type="number" name="identity" class="form-control" id="editId" disabled="disabled"/>
                            </label>
                            <br/>
                            <label for="authority">Authority:</label>
                            <input type="text" class="form-control" id="authority" name="authority" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary" value="Submit" id="create">Save changes</button>
                            <button type="Submit" class="btn btn-primary" value="Submit" id="edit" >Update</button>
                        </div>
                        <!-- Add more form fields as needed -->
                    </g:form>

                </div>
            </div>


        </div>
    </div>
</div>

<!-- Your HTML table -->
<table id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Authority</th>
        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${roles}" var="role">
        <tr>
            <td>${role.id}</td>
            <td>${role.authority}</td>
            <td>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${role.id}" data-role-authority="${role.authority}" >Update</g:link>
                <g:link action="delete" id="${role.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger">Delete</button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- Initialize DataTables -->
<script>
    $("#addRole").click(function(){
        $('#edit').hide()
        $('#create').show()
        $('#authority').val('');
    })
    $(".editBtn").click(function(){
        var roleId = $(this).data('role-id');
        var roleAuthority = $(this).data('role-authority');
        $('#authority').val(roleAuthority);
        $('#editId').val(roleId);
        $('#exampleModal').modal('show');
        $('#edit').show()
        $('#create').hide()
    });
    $("#edit").click(function(){
        var id = $("#editId").val()
        var authority = $("#authority").val()

        var requestData = {
            param1: id,
            param2: authority
        };
        console.log(id,authority);
        $.ajax({
            url: "${createLink(controller:'role',action:'update')}",
            data: requestData,
            success: function(response) {
                console.log('Controller action called successfully.');
                console.log(response);
                location.reload();// Log the response from the controller
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $(document).ready(function () {
        $('#myTable').DataTable();
    });
</script>
</body>
</html>