import { User } from './Userinfo.js';
import { BACKEND_URL } from './config.js';

// Description: Profile class to display user profile information on the UI
class Profile {
  #user = [];
  #BACKEND_URL = '';

  constructor(url) {
    this.#BACKEND_URL = url;
  }

  // Load user profile information
  loadProfile = () => {
    return new Promise(async (resolve, reject) => {
      try {
        await this.getUserInfo();
        resolve();
      } catch (error) {
        reject(error);
      }
    });
  };

  // Get user information from backend
  getUserInfo = () => {
    return new Promise(async (resolve, reject) => {
      try {
        const response = await fetch('http://localhost:3001/user/register');
        if (response.ok) {
          const json = await response.json();
          this.#readJson(json);
          resolve(this.#user);
        } else {
          throw new Error(response.statusText);
        }
      } catch (error) {
        reject(error);
      }
    });
  };

  #readJson = (json) => {
    json.forEach((node) => {
      const user = new User(node.id, node.firstname, node.lastname, node.phone, node.email, node.image_name);
      this.#user.push(user);
    });
  };
}

export { Profile };
