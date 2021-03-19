import { tryLogin } from '../login/login.js';
import { signUp } from '../create_account/create_account.js';
import sendListing from '../sell/sendListing.js';
import { deleteListing } from '../profile/userProfile.js';
import { addSpecInput } from '../sell/createListing.js';

export const baseURL = `http://localhost:3000`;
export const listingsURL = `${baseURL}/listings`;
export const loginURL = `${baseURL}/login`;
export const usersURL = `${baseURL}/users`;

export function parseJSON(response) {
  return response.json();
}

export const routeForm = {
  'form-signin': tryLogin,
  'form-create-account': signUp,
  'form-create-listing': sendListing,
  'delete-listing': deleteListing,
  'add-spec': addSpecInput,
};