

angular.module("myApplication", ["smart-table"]).controller('safeCtrl', ['$scope', '$http', function ($scope, $http) {


    (function () {
        // Before using it we must add the parse and format functions
        // Here is a sample implementation using moment.js
        validate.extend(validate.validators.datetime, {
            // The value is guaranteed not to be null or undefined but otherwise it
            // could be anything.
            parse: function (value, options) {
                return +moment.utc(value);
            },
            // Input is a unix timestamp
            format: function (value, options) {
                var format = options.dateOnly ? "YYYY-MM-DD" : "YYYY-MM-DD hh:mm:ss";
                return moment.utc(value).format(format);
            }
        });

        // These are the constraints used to validate the form
        var constraints = {

            name: {
                presence: { allowEmpty: false },
                format: {
                    // We don't allow anything that a-z and 0-9
                    pattern: "[a-zA-Z]+",
                    // but we don't care if the username is uppercase or lowercase
                    message: "must be alphabetic."
                },
                length: {
                    maximum: 20,
                }
            },

            sex: {
                presence: { allowEmpty: false, message: "^Please select the gender." }
            },

            dob: {
                presence: { allowEmpty: false, message: "^Please select the date." }
            },

            address: {
                presence: { allowEmpty: false },
                length: {
                    maximum: 50
                }
            },

            income: {
                presence: { allowEmpty: false },
                numericality: {
                    onlyInteger: true,
                    greaterThanOrEqualTo: 0
                }
            }
        };


        // 2nd set of constraints for edit form with different field names
        var iconstraints = {

            iname: {
                presence: { allowEmpty: false, message: "^Name can not be blank." },
                format: {
                    // We don't allow anything that a-z and 0-9
                    pattern: "[a-zA-Z]+",
                    // but we don't care if the username is uppercase or lowercase
                    message: "must be alphabetic."
                },
                length: {
                    maximum: 20,
                }
            },

            isex: {
                presence: { allowEmpty: false, message: "^Please select the gender." }
            },

            idob: {
                presence: { allowEmpty: false, message: "^Please select the date." }
            },

            iaddress: {
                presence: { allowEmpty: false, message: "^Address can not be blank." },
                length: {
                    maximum: 50
                }
            },

            iincome: {
                presence: { allowEmpty: false, message: "^Income can not be blank." },
                numericality: {
                    onlyInteger: true,
                    greaterThanOrEqualTo: 0
                }
            }
        };





        // Hook up the form so we can prevent it from being posted
        var form = document.querySelector("form#myForm");
        form.addEventListener("submit", function (ev) {
            ev.preventDefault();
            handleFormSubmit(form);
        });

        var form3 = document.querySelector("form#myForm3");
        form3.addEventListener("submit", function (ev) {
            ev.preventDefault();
            handleFormSubmit(form);
        });



        // Hook up the inputs to validate on the fly
        var inputs = document.querySelectorAll("input, textarea, select")
        for (var i = 0; i < inputs.length; ++i) {
            inputs.item(i).addEventListener("change", function (ev) {
                var errors = validate(form, constraints) || {};
                showErrorsForInput(this, errors[this.name])
            });
        }

        for (var i = 0; i < inputs.length; ++i) {
            inputs.item(i).addEventListener("change", function (ev) {
                var errors2 = validate(form3, iconstraints) || {};
                showErrorsForInput(this, errors2[this.name])
            });
        }



        function handleFormSubmit(form, input) {
            // validate the form aainst the constraints
            var errors = validate(form, constraints);
            // then we update the form to reflect the results
            showErrors(form, errors || {});
            if (!errors) {
                //showSuccess();
            }
        }

        // Updates the inputs with the validation errors
        function showErrors(form, errors) {
            // We loop through all the inputs and show the errors for that input
            _.each(form.querySelectorAll("input[name], select[name]"), function (input) {
                // Since the errors can be null if no errors were found we need to handle
                // that
                showErrorsForInput(input, errors && errors[input.name]);
            });
        }

        // Shows the errors for a specific input
        function showErrorsForInput(input, errors) {
            // This is the root of the input
            var formGroup = closestParent(input.parentNode, "form-group")
                // Find where the error messages will be insert into
                , messages = formGroup.querySelector(".messages");
            // First we remove any old messages and resets the classes
            resetFormGroup(formGroup);
            // If we have errors
            if (errors) {
                // we first mark the group has having errors
                formGroup.classList.add("has-error");
                // then we append all the errors
                _.each(errors, function (error) {
                    addError(messages, error);
                });
            } else {
                // otherwise we simply mark it as success
                formGroup.classList.add("has-success");
            }
        }

        // Recusively finds the closest parent that has the specified class
        function closestParent(child, className) {
            if (!child || child == document) {
                return null;
            }
            if (child.classList.contains(className)) {
                return child;
            } else {
                return closestParent(child.parentNode, className);
            }
        }

        function resetFormGroup(formGroup) {
            // Remove the success and error classes
            formGroup.classList.remove("has-error");
            formGroup.classList.remove("has-success");
            // and remove any old messages
            _.each(formGroup.querySelectorAll(".help-block.error"), function (el) {
                el.parentNode.removeChild(el);
            });
        }

        // Adds the specified error with the following markup
        // <p class="help-block error">[message]</p>
        function addError(messages, error) {
            var block = document.createElement("p");
            block.classList.add("help-block");
            block.classList.add("error");
            block.innerText = error;
            messages.appendChild(block);
        }

        function showSuccess() {
            // We made it \:D/
            alert("Success!");
        }
    }


    )();


    var validationConstraint = {

        Name: {
            presence: { allowEmpty: false },
            format: {
                // We don't allow anything that a-z and 0-9
                pattern: "[a-zA-Z]+",
                // but we don't care if the username is uppercase or lowercase
                message: "must be alphabetic."
            },
            length: {
                maximum: 20,
            }
        },

        Sex: {
            presence: { allowEmpty: false , message: "^Please select the gender." }
        },

        DOB: {
            presence: { allowEmpty: false, message: "^Please select the date." }
        },

        Address: {
            presence: { allowEmpty: false },
            length: {
                maximum: 50
            }
        },

        Money: {
            presence: { allowEmpty: false },
            numericality: {
                onlyInteger: true,
                greaterThanOrEqualTo: 0
            }
        }
    };

    var iController = this;

    //--------------------- [API]---------------------------------------

    //Create Data API Call From Angular
    function saveAPI(person) {
        return $http(
            {
                method: 'post',
                data: person,
                url: "/api/PeopleAPI"
            });
    }

    //Edit Data API 2
    iController.editAPI2 = function (person) {
        return $http({
            method: 'put',
            data: JSON.stringify(person),
            url: "/api/test123/"
        });
    }

    //Delete Data API Call From Angular
    iController.deleteAPI = function (ID) {
        var url = "/api/PeopleAPI/" + ID;
        return $http(
            {
                method: 'delete',
                data: ID,
                url: url
            });
    }

    //--------------------- [/API]---------------------------------------


    //Initially gets all the data
    $scope.rowCollection = [];
    $http.get("/api/PeopleAPI/LoadData").then(function (response) {
        $scope.rowCollection = response.data;
    });


    //Updates/Refreshes/Gets Data
    iController.getData = function () {
        $http.get("/api/PeopleAPI/LoadData").then(function (response) {
            $scope.rowCollection = response.data;
        });
    };

    //--------------------- [Functions]---------------------------------------

    //Sava Data Function
    $scope.saveData = function () {

        var person = { Name: $scope.name, Sex: $scope.gender, DOB: $scope.dob, Address: $scope.address, Money: $scope.income };


        if (!validate(person, validationConstraint)) {
        console.log(person);
        console.log(validate(person, validationConstraint));

        //name, sex, dob, address, income
            var saveSubs = saveAPI(person);
            saveSubs.then(function (d) {

                $('#modal1').modal('hide');
                $http.get("http://localhost:49330/api/PeopleAPI/LoadData").then(function (response) {
                    $scope.rowCollection = response.data;
                });
                document.getElementById("myForm").reset();
                person = {};
                console.log("Successfully inserted data!");

            }, function (error) {
                console.log('Oops! Something went wrong while saving the data.');
                })

        }
        


        
    };

    //Edit Data Function
    $scope.editData = function () {
        
        var person = $scope.formObject;

        console.log(person);
        console.log(validate(person, validationConstraint));


        if (!validate(person, validationConstraint)) {
            var editFunction = iController.editAPI2(person);

            editFunction.then(function (d) {

                $('#modal3').modal('hide');

                iController.getData();

                //document.getElementById("myForm3").reset();
                console.log("Successfully inserted dataa!");



            }, function (error) {
                console.log('Oops! Something went wrong while saving the data.');
            })
        }
        
    };

    $scope.openCreate = function () {
        $(".messages").empty();
        $("div").removeClass("has-error");
        document.getElementById("myForm").reset();
        $('#modal1').modal('show');

    }
    //Delete Data Function
    $scope.deleteData = function (subID) {
        var dlt = iController.deleteAPI(subID);
        dlt.then(function (d) {
            $scope.rowCollection = iController.getData();
        }, function (error) {
            console.log('Oops! Something went wrong while deleting the data.')
        })
    };

    /* Modals */

    //Details Method, Gets data by ID
    $scope.getDataID = function (ID) {
        $scope.modalObject = $scope.rowCollection.filter(x => x.PersonID == ID)[0];
        $('#modal2').modal('show');
    };

    //Edit Modal, shows details of particular row id
    $scope.getDataID2 = function (ID) {
        $scope.formObject = angular.copy($scope.rowCollection.filter(x => x.PersonID == ID)[0]);
        $scope.formObject.DOB = new Date($scope.formObject.DOB);
        $('#modal3').modal('show');
    };

    //Displays delete modal
    $scope.deleteConfirm = function (ID) {
        $scope.deleteRecord = $scope.rowCollection.filter(x => x.PersonID == ID)[0];
        $('#deleteModal').modal('show');
    }

    //--------------------- [/Functions]---------------------------------------


    //----------------[Client Side Validations]-------------------------

    //Name
    $scope.nameCheck = function (name) {
        if (name != "Test") {
            return "It works";
        }
    }


    //Gender
    //Age
    //DOB
    //Income
    //Address

    //----------------[/Client Side Validations]------------------------
}]);