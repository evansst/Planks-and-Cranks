import carousel from './carousel.js';
import specs from './specs.js';
import description from './details.js';
import { listingsURL, parseJSON } from '../../helpers/routerService.js';
import { main } from '../../helpers/helper.js';


export default function listingShowPage(listingID) {

  fetch(`${listingsURL}/${listingID}`)
    .then(parseJSON)
    .then(displayListing);

  main.innerHTML = '';
}

function displayListing(listing) {
  const images = listing.images.map(image => 'http://localhost:3000' + image.url);
  
  const $listingContainer = document.createElement('div');
  $listingContainer.className = 'row justify-content-center';
  
  $listingContainer.append(carousel(images));
  $listingContainer.append(specs(listing));
  $listingContainer.append(description(listing));

  main.append($listingContainer);
}



