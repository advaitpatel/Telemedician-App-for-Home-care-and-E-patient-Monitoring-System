var FormValidator = function () {
    // function to initiate Validation Sample 1
    var runValidator1 = function () {
        var form1 = $('#form');
        var errorHandler1 = $('.errorHandler', form1);
        var successHandler1 = $('.successHandler', form1);
        $.validator.addMethod("FullDate", function () {
            //if all values are selected
            if ($("#dd").val() != "" && $("#mm").val() != "" && $("#yyyy").val() != "")
            {
                return true;
            }
            else 
            {
                return false;
            }
        }, 'Please select a day, month, and year');
        $('#form').validate({
            errorElement: "span", // contain the error msg in a span tag
            errorClass: 'help-block',
            errorPlacement: function (error, element) { // render error placement for each input type
                if (element.attr("type") == "radio" || element.attr("type") == "checkbox")
                 {
                     // for chosen elements, need to insert the error after the chosen container
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } 
                else if (element.attr("name") == "dd" || element.attr("name") == "mm" || element.attr("name") == "yyyy") 
                {
                    error.insertAfter($(element).closest('.form-group').children('div'));
                } 
                else 
                {
                    error.insertAfter(element);
                    // for other inputs, just perform default behavior
                }
            },
            ignore: "",
            rules: {
                First_name: {
                    minlength: 2,
                    required: true
                },
                Last_name: {
                    minlength: 2,
                    required: true
                },
                Email_id: {
                    required: true,
                    email: true
                },
                Set_pwd: {
                    minlength: 6,
                    required: true
                },
                Confirm_pwd: {
                    required: true,
                    minlength: 6,
                    equalTo: "#Set_pwd"
                },
                Year: "FullDate",
                gender: {
                    required: true
                },
                Zipcode: {
                    required: true,
                    number: true,
                    minlength: 6
                },
                City: {
                    required: true,
                    minlength: 4
                },
                mail: {
                    required: true
                },
                Occp: {
                    required: true
                },
                Add: {
                    required: true,
                    minlength: 10,
                    maxlength: 80
                },
                Mobile_no: {
                    required: true,
                    minlength:10,
                    maxlength:10
                },
                Whatsapp_no: {
                    required: true,
                    minlength:10,
                    maxlength:10   
                },
                Blood_gp : {
                    required :true,
                },
                User_name: {
                    required: true,
                    minlength: 6,
                    maxlength: 15,
                    notEqualTo: "#First_name",
                    notEqualTo: "#Last_name"
                },
                Security_quest: {
                    required: true,
                },
                Security_ans: {
                    required: true,
                    minlength: 4,
                    maxlength: 15
                },


            },


            messages: {
                First_name: {
                    required: "Please specify your First name",
                    minlength: "minimum 2"
                },
                Last_name: {
                    required: "Please specify your Last name",
                    minlength: "minimum 2"
                },
                Email_id: {
                    required: "We need your email address to contact you",
                    email: "Your email address must be in the format of advait@visionmedicare.com"
                },
                gender: "Please check a gender!",
                Add: {
                    required: "Your Address is important for us",
                    minlength: "Atleast 10 latters are there",
                    maxlength: "Use no more than 80 words"
                },
                Mobile_no: {
                    required: "Please specify to stay updated",
                    minlength: "Please verify your Mobile Number.",
                    maxlength: "Your Mobile Number must contain 10 latters"
                },
                Zipcode: {
                    required: "Please verify your postal code",
                    minlength: "should not more than 6",
                    number: "It will accept numbers only"
                },
                Blood_gp: "We need your blood in emergency",
                Set_pwd: {
                    required: "Please set your Password for Security issues",
                    minlength: "minimum length is 6"
                },
                Security_quest: "Please choose anyone from here",
                Occp: "We need this for detailed information",
                City: {
                    required: "Please specify your City name",
                    minlength: "minimum 4 latters"
                },

                Whatsapp_no: {
                    required: "Please specify to stay updated",
                    minlength: "Please verify your Mobile Number.",
                    maxlength: "Your Mobile Number must contain 10 latters"
                },
                mail: "Please fill this choice",
                User_name: {
                    required: "Please set your User Name",
                    minlength: "Your User Name should have atleast 6 characters",
                    maxlength: "You can't set your User Name to more than 15 latters",
                    notEqualTo: "Username and Firstname or Lastname can not be same"
                },
                Confirm_pwd: {
                    required: "Please confirm your password",
                    equalTo: "Your Password must match with previous one",
                    minlength: "minimum length is 6"
                },
                Security_ans: {
                    required: "Please give details of your question", 
                    minlength: "Your answer should have atleast 4 characters",
                    maxlength: "You can't set your answer to more than 15 latters"
                },
                


            },
            groups: {
                DateofBirth: "dd mm yyyy",
            },
            invalidHandler: function (event, validator) { //display error alert on form submit
                successHandler1.hide();
                errorHandler1.show();
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');
                // display OK icon
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                // add the Bootstrap error class to the control group
            },
            unhighlight: function (element) { // revert the change done by hightlight
                $(element).closest('.form-group').removeClass('has-error');
                // set error class to the control group
            },
            success: function (label, element) {
                label.addClass('help-block valid');
                // mark the current input as valid and display OK icon
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            },
            submitHandler: function (form) {
                successHandler1.show();
                errorHandler1.hide();
                // submit form
                //$('#form').submit();
            }
        });
    };
    // function to initiate Validation Sample 2
    var runValidator2 = function () {
        var form2 = $('#form2');
        var errorHandler2 = $('.errorHandler', form2);
        var successHandler2 = $('.successHandler', form2);
        $.validator.addMethod("getEditorValue", function () {
            $("#editor1").val($('.summernote').code());
            if ($("#editor1").val() != "" && $("#editor1").val() != "<br>") {
                $('#editor1').val('');
                return true;
            } else {
                return false;
            }
        }, 'This field is required.');
        form2.validate({
            errorElement: "span", // contain the error msg in a small tag
            errorClass: 'help-block',
            errorPlacement: function (error, element) { // render error placement for each input type
                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { // for chosen elements, need to insert the error after the chosen container
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.hasClass("ckeditor")) {
                    error.appendTo($(element).closest('.form-group'));
                } else {
                    error.insertAfter(element);
                    // for other inputs, just perform default behavior
                }
            },
            ignore: "",
            rules: {
                firstname2: {
                    minlength: 2,
                    required: true
                },
                lastname2: {
                    minlength: 2,
                    required: true
                },
                email2: {
                    required: true,
                    email: true
                },
                occupation: {
                    required: true
                },
                dropdown: {
                    required: true
                },
                services: {
                    required: true,
                    minlength: 2
                },
                creditcard: {
                    required: true,
                    creditcard: true
                },
                url: {
                    required: true,
                    url: true
                },
                zipcode2: {
                    required: true,
                    number: true,
                    minlength: 5,
                    minlength: 5
                },
                city2: {
                    required: true
                },
                editor1: "getEditorValue",
                editor2: {
                    required: true
                }
            },
            messages: {
                firstname: "Please specify your first name",
                lastname: "Please specify your last name",
                email: {
                    required: "We need your email address to contact you",
                    email: "Your email address must be in the format of name@domain.com"
                },
                services: {
                    minlength: jQuery.format("Please select  at least {0} types of Service")
                }
            },
            invalidHandler: function (event, validator) { //display error alert on form submit
                successHandler2.hide();
                errorHandler2.show();
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');
                // display OK icon
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                // add the Bootstrap error class to the control group
            },
            unhighlight: function (element) { // revert the change done by hightlight
                $(element).closest('.form-group').removeClass('has-error');
                // set error class to the control group
            },
            success: function (label, element) {
                label.addClass('help-block valid');
                // mark the current input as valid and display OK icon
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            },
            submitHandler: function (form) {
                successHandler2.show();
                errorHandler2.hide();
                // submit form
                //$('#form2').submit();
            }
        });
        $('.summernote').summernote({
            height: 300,
            tabsize: 2
        });
        CKEDITOR.disableAutoInline = true;
        $('textarea.ckeditor').ckeditor();
    };
    return {
        //main function to initiate template pages
        init: function () {
            runValidator1();
            runValidator2();
        }
    };
}();