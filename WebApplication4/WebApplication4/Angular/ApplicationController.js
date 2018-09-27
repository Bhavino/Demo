angular.module("myApplication", ["smart-table"]).controller('safeCtrl', ['$scope', '$http', function ($scope, $http) {

    var iController = this;

    //--------------------- [API]---------------------------------------

    //Create Data API Call From Angular
    function saveAPI(person) {
        return $http(
            {
                method: 'post',
                data: person,
                url: 'http://localhost:49330/api/PeopleAPI'
            });
    }

    //Edit Data API 2
    iController.editAPI2 = function (person) {
        return $http({
            method: 'put',
            data: JSON.stringify(person),
            url: "http://localhost:49330/api/test123/"
        });
    }

    //Delete Data API Call From Angular
    iController.deleteAPI = function (ID) {
        var url = '/api/PeopleAPI/' + ID;
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
    //After pressing save button
    $scope.saveData = function () {

        var person = { Name: $scope.name, Sex: $scope.gender, DOB: $scope.dob, Address: $scope.address, Money: $scope.income };

        var saveSubs = saveAPI(person);
        saveSubs.then(function (d) {
            $('#modal1').modal('hide');
            $http.get("/api/PeopleAPI/LoadData").then(function (response) {
                $scope.rowCollection = response.data;
            });
            document.getElementById("myForm").reset();
            console.log("Successfully inserted data!");

        }, function (error) {
            console.log('Oops! Something went wrong while saving the data.');
        })
    };

    //Edit Data Function
    $scope.editData = function () {

        var person = $scope.formObject;
        person.DOB = "2/2/2";

        var editFunction = iController.editAPI2(person);

        editFunction.then(function (d) {

            $('#modal3').modal('hide');

            iController.getData();

            //document.getElementById("myForm3").reset();
            console.log("Successfully inserted data!");

        }, function (error) {
            console.log('Oops! Something went wrong while saving the data.');
        })
    };

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
        $scope.formObject = $scope.rowCollection.filter(x => x.PersonID == ID)[0];
        $('#modal3').modal('show');
    };

    //Displays delete modal
    $scope.deleteConfirmModal = function (ID) {
        $scope.deleteRecord = $scope.rowCollection.filter(x => x.PersonID == ID)[0];
        $('#deleteModal').modal('show');
    }

    //--------------------- [/Functions]---------------------------------------
}]);