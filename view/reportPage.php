<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Xpeed Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../public/css/style.css">
</head>

<body>
    <div class="container">
        <h1 class="text-center display-6">Submission records</h1>
        <p class="text-center text-muted">According to XpeedStudio task instruction, here only id and entry_at columns search are enabled</p>
        <div class="text-end">
            <a href="../index.php" class="btn btn-primary btn-sm btn-block"> Create New Record <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
        </div>
        <div class="table-section mt-5">
            <table id="submissionTable" class="table table-striped hover" style="width:100%">
                <thead>
                    <tr>
                        <th>#ID</th>
                        <th>Amount</th>
                        <th>Buyer</th>
                        <th>Receipt ID</th>
                        <th>Buyer Email</th>
                        <th>Buyer Ip</th>
                        <th>Note</th>
                        <th>City</th>
                        <th>Phone</th>
                        <th>Entry By</th>
                        <th>Entry At</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            var i = 1;
            $('#submissionTable').DataTable({
                "ajax": "http://localhost/xpeed-form/index.php?module=Form&action=showall",
                "columns": [
                    //we can use serial system, but according to instruction I'm using id and entry at(date) for search and make other column search false.
                    // {                  
                    //     "render": function(data, type, full, meta) {
                    //         return i++;
                    //     }
                    // },
                    {
                        data: "id"
                    },
                    {
                        data: "amount",
                        "searchable": false
                    },
                    {
                        data: "buyer",
                        "searchable": false
                    },
                    {
                        data: "receipt_id",
                        "searchable": false
                    },
                    {
                        data: "buyer_email",
                        "searchable": false
                    },
                    {
                        data: "buyer_ip",
                        "searchable": false
                    },
                    {
                        data: "note",
                        "searchable": false
                    },
                    {
                        data: "city",
                        "searchable": false
                    },
                    {
                        data: "phone",
                        "searchable": false
                    },
                    {
                        data: "entry_by",
                        "searchable": false
                    },
                    {
                        data: "entry_at",
                    }
                ]
            });
        });
    </script>
</body>

</html>