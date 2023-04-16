<template>
  <div id="register" class="text-center">
    <form @submit.prevent="register">
      <h1>Create Account</h1>
      <div role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div class="form-input-group">
        <label for="username">Username</label>
        <input
          type="text"
          id="username"
          v-model="user.username"
          required
          autofocus
        />
      </div>
      <div class="form-input-group">
        <label for="password">Password</label>
        <input type="password" id="password" v-model="user.password" required />
      </div>
      <div class="form-input-group">
        <label for="confirmPassword">Confirm Password</label>
        <input
          type="password"
          id="confirmPassword"
          v-model="user.confirmPassword"
          required
        />
      </div>
      <button class="create-acc-btn" type="submit">Create Account</button>
      <p>
        <router-link class="login-link" :to="{ name: 'login' }">
          Login Here</router-link
        >
      </p>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "register",
  data() {
    return {
      user: {
        username: "",
        password: "",
        confirmPassword: "",
        role: "user",
      },
      registrationErrors: false,
      registrationErrorMsg: "There were problems registering this user.",
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Password & Confirm Password do not match.";
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: "/login",
                query: { registration: "success" },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = "Bad Request: Validation Errors";
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = "There were problems registering this user.";
    },
  },
};
</script>

<style scoped>
#register {
  display: flex;
  justify-content: center;
}
.form-input-group {
  margin-bottom: 1rem;
  text-align: right;
}
form {
  text-align: center;
  border: 5px solid#FFC107;
  border-radius: 20px;
  margin: 20px;
  padding: 50px 100px;
  background-color: rgb(51, 49, 49);
}
h1 {
  text-align: center;
  font-weight: bold;
  font-size: 40px;
}
label {
  margin-right: 0.5rem;
  font-size: 18px;
}
p {
  text-align: center;
}
.login-link {
  color: #ffc107;
  font-size: 20px;
}

.create-acc-btn {
  padding: 5px 25px;
  font-size: 16px;
  background-color: #ffc107;
  border-radius: 6px;
}
.create-acc-btn:hover {
  background-color: wheat;
  cursor: pointer;
}
</style>
