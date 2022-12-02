<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Xpeed Form</title>
    <meta name="author" content="SM AL-AMIN, gmail: alamin.cse158@gmail.com | XpeedStudio task">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="public/css/style.css">
</head>

<body>
    <section class="get-in-touch container">
        <h1 class="title">XpeedStudio</h1>
        <div class="text-end">
            <a href="view/reportPage.php" class="btn btn-light btn-sm btn-block"> All Submission Records <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
        </div>
        <form class="contact-form row" id="formSubmission" enctype="multipart/form-data">
            <div class="form-field col-lg-6">
                <label class="label" for="buyer">Amount<sup>*</sup></label>
                <input class="input-text js-input" name="amount" type="number">
            </div>
            <div class="form-field col-lg-6">
                <label class="label" for="buyer">Buyer<sup>*</sup></label>
                <input class="input-text js-input" name="buyer" type="text">
            </div>
            <div class="form-field col-lg-6">
                <label class="label" for="receipt_id">Receipt ID <sup>*</sup></label>
                <input class="input-text js-input" name="receipt_id" type="text">
            </div>
            <div class="form-field col-lg-6 ">
                <label class="label" for="buyer_email">Buyer E-mail<sup>*</sup></label>
                <input class="input-text js-input" name="buyer_email" type="email">
            </div>
            <div class="form-field col-lg-12 ">
                <label class="label" for="note">Note<sup>*</sup></label>
                <input class="input-text js-input" id="note" name="note" type="text">
            </div>
            <div class="form-field col-lg-6 ">
                <label class="label" for="phone">City<sup>*</sup></label>
                <input class="input-text js-input" name="city" type="text">
            </div>
            <div class="form-field col-lg-6 ">
                <label class="label" for="phone">Phone<sup>*</sup></label>
                <input class="input-text js-input" name="phone" type="tel">
            </div>
            <div class="form-field col-lg-6">
                <label class="label" for="phone">Entry By<sup>*</sup></label>
                <input class="input-text js-input" name="entry_by" type="number">
            </div>
            <div id="main_item">
                <h6 style="color: #5543ca;">Items Name<sup>*</sup></h6>
                <div class="row">
                    <div class="form-field col-lg-6">
                        <input class="input-text js-input" placeholder="Item name here..." name="item_name[]" type="text">

                    </div>
                    <div class="form-field col-lg-2">
                        <input type="button" class="add_item_btn btn btn-sm btn-success" value="Add more item">
                    </div>
                </div>
            </div>
            <div class="form-field col-md-12 text-end">
                <button class="submit-btn" type="submit">
                    Submit
                    <span class="spinner-border-sm" id="pre-loading" role="status" aria-hidden="true"></span>
                </button>
                <!-- <input class="submit-btn" type="submit" value="Submit"> -->
            </div>
        </form>
    </section>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function() {

            $("#formSubmission").validate({
                rules: {
                    amount: {
                        required: true,
                        maxlength: 10,
                        number: true
                    },
                    buyer: {
                        required: true,
                        maxlength: 20
                    },
                    receipt_id: {
                        required: true,
                        maxlength: 20
                    },
                    buyer_email: {
                        required: true,
                        email: true
                    },
                    note: {
                        required: true
                    },
                    city: {
                        required: true,
                        maxlength: 20
                    },
                    phone: {
                        required: true,
                        maxlength: 11,
                        minlength: 11
                    },
                    entry_by: {
                        required: true,
                        maxlength: 10,
                        number: true
                    },
                    item_name: {
                        required: true
                    },
                },
                messages: {
                    amount: {
                        required: 'Please enter  amount',
                    },
                    buyer: {
                        required: 'Please enter  buyer',
                    },
                    receipt_id: {
                        required: 'Please enter receipt Id',
                    },
                    buyer_email: {
                        required: 'Buyer email is required',
                    },
                    note: {
                        required: 'Note is required',
                    },
                    phone: {
                        required: 'Phone number is required',
                    },
                    item_name: {
                        required: 'Item is required',
                    },
                },

                errorPlacement: function(label, element) {
                    label.addClass('mt-2 text-danger');
                    label.insertAfter(element);
                },
            });

            $('#formSubmission').on('submit', function(e) {
                e.preventDefault();

                var $form = $(this);
                if (!$form.valid()) return false;

                var note = $("#note").val();
                if ((note.split(" ")).length > 30) {
                    toastr.error('Note* field, not more than 30 words!');
                    return false;
                }
                $("#pre-loading").addClass("spinner-border");

                $.ajax({
                    url: "index.php?module=Form&action=store",
                    method: "POST",
                    data: new FormData(this),
                    dataType: 'JSON',
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function(data) {
                        toastr.options = {
                            "debug": false,
                            "positionClass": "toast-top-right",
                            "onclick": null,
                            "fadeIn": 300,
                            "fadeOut": 1000,
                            "timeOut": 5000,
                            "extendedTimeOut": 1000
                        };
                        if (data.status === true) {
                            $('#formSubmission').trigger('reset');
                            $('.add_more_item').remove();
                            $("#pre-loading").removeClass("spinner-border");
                            toastr.success('Form Submission Successfully');
                        } else if (data.status === 403) {
                            $("#pre-loading").removeClass("spinner-border");
                            toastr.warning('Sorry you cannot submit form within 24 hours!');
                        } else {
                            $("#pre-loading").removeClass("spinner-border");
                            toastr.error('Something went wrong!');
                        }
                    }
                });
            });

            $('.add_item_btn').click(function(e) {
                e.preventDefault();
                $("#main_item").append(`
                    <div class="row add_more_item">
                        <div class="form-field col-lg-6">
                            <input class="input-text js-input" placeholder="Item name here..." name="item_name[]" type="text" required>
                        </div>
                        <div class="form-field col-lg-4">
                            <input type="button" class="remove_item_btn btn btn-sm btn-light" value="&#10060;">
                        </div>
                    </div>
                `);
            });

            $(document).on('click', '.remove_item_btn', function(e) {
                e.preventDefault();
                let current_row = $(this).parent().parent();
                $(current_row).remove();
            });
        });
    </script>
</body>

</html>