export function setLoginSpinner() {
  document.querySelector('#login-button').innerHTML = `
    <div class="spinner-border" role="status">
    </div>
    `;
}

export function setLoginButton() {
  document.querySelector('#login-button').innerHTML = `Log In`;
}

export function loggedIn() {
  return (localStorage.user_id)
    ? {
      user_id: localStorage.user_id,
      username: localStorage.username,
      token: localStorage.token,
    }
    : false;
}

export function login(user) {
  saveUser(user);
  setLogoutIcon(user.username);

  return (token) => saveToken(token);
}

function saveUser(user) {
  localStorage.setItem('username', user.username);
  localStorage.setItem('user_id', user.id);
  localStorage.setItem('name', user.name);

  const userInput = document.querySelector('input[name="user_id"]');
  if (userInput) userInput.value = user.id;
}

function saveToken(token) {
  localStorage.setItem('token', token);
}

export function setLogoutIcon(username) {
  document.querySelector('h6#username').innerHTML = `<a href="#/user_profile"> ${username}</a>`;
  document.querySelector('a#login-link').outerHTML = `
    <a id='login-link' class="nav-link" data-toggle="modal" data-target="#logoutModal">
      <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-dash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5-.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
      </svg>
    </a>`;
}