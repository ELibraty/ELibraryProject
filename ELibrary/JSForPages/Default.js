var appRegesterPerson = new Vue({
    el: '#appRegesterPerson',
    data: {
        message: '',
        personData: {
            userName: "",
            password: "",
            email: "",
            confirmPassword:""
        }
    },
    methods: {
       exitMessage: function() {
           this.personData = {
               userName: "",
               password: "",
               email: "",
               confirmPassword: ""
           };
           this.message = "";
        },

        registrationPerson: function () {
            var xmlhttp = new XMLHttpRequest();
            var personData = appRegesterPerson._data.personData;
            // xmlhttp.open("GET", "Default.aspx?opr=newRegistartion&personData=" + personData);
            var userName = personData.userName, password = personData.password, email = personData.email, confirmPassword = personData.confirmPassword;
            xmlhttp.open("GET", "Default.aspx?opr=newRegistartion&userName=" + userName + "&password=" + password + "&email=" + email + "&confirmPassword=" + confirmPassword);

            xmlhttp.send(null);

            
        }

    }

})


