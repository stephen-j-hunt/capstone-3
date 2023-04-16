<template>
  <div id="login">
    <form @submit.prevent="login">
      <h1>Please Sign In</h1>
      <div role="alert" v-if="invalidCredentials">
        Invalid username and password!
      </div>
      <div role="alert" v-if="this.$route.query.registration">
        Thank you for registering, please sign in.
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
      <div class="submit-button">
        <button class="sign-in" type="submit">Sign in</button>
      </div>
      <p>
        <router-link class="register-link" :to="{ name: 'register' }"
          >Register</router-link
        >
      </p>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: "",
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then((response) => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/my-account");
          }
        })
        .catch((error) => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
  },
};
</script>

<style scoped>
#login {
  display: flex;
  justify-content: center;
}
.form-input-group {
  margin-bottom: 1rem;
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
.register-link {
  color: #ffc107;
  font-size: 18px;
}
.submit-button {
  text-align: center;
}
.submit-button > button {
  padding: 5px 25px;
  font-size: 16px;
  border-radius: 6px;
  background-color: #ffc107;
}
.sign-in:hover {
  background-color: wheat;
  cursor: pointer;
}
</style>