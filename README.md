# Planks & Cranks
> Buy and Sell high-end and gently used bikes and skis.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [License](#license)

## Info
Planks & Cranks is an only marketplace for high quality, gently used bycicles and skis.  It allows users to list and sell their gear in a clean, streamlined site.

<div align="center">Welcome to Planks & Cranks. </div>
<br/>
<div align="center">
<kbd>
<img src="">
</kbd>
</div>

<br/>
<div align="center">
<kbd>
<img src="">
</kbd>
</div>

## Technologies
### Backend Development 
* Rails API - 6.0.3
* Ruby - 2.6.1
* ActiveRecord - 6.0
* Rails API 6.0.3
* JSON - 2.3
* Rest-Client - 2.1
* Bcrypt - 3.1.7
* Carrierwave - 2.0
* JWT - 2.2
* Image Processing - 1.2
* MiniMagick - 4.10.1
* PostgreSQL - 12.4
* Hstore (Postgres Extension) - 1.6

### Frontend Development 
* JavaScript (ES6)
* HTML5
* CSS
* Bootstrap 4

## Setup
To try out this project: 
1. Clone the GitHub repository locally to your computer
1. Bundle install, create your database, and add the Hstore extension to the Postgres database.
1. Run `$ rails db:seed` if you would like to see some seed listings.
1. Start your rails server, start your chosen front-end server, and open index.html in the root directory.
1. Navigate through the site!

## Code Examples
### 
```
import * as $ from "../../helpers/helper.js";

export default function listingIndex() {
  
  fetch($.listingsURL)
    .then($.parseJSON)
    .then(displayCards);
  
  $.main.innerHTML = '';
}

function displayCards(listings) {
  const $cardDeck = document.createElement('div');
  $cardDeck.className = 'row row-cols-1 row-cols-md-3 p-4';

  listings.map(listing => toListingCard(listing)($cardDeck));

  $.main.append($cardDeck);  

}

function toListingCard(listing) {
  return function ($cardDeck) {
  
    const $listingCard = document.createElement('div');
    $cardDeck.append($listingCard);
  
    $listingCard.outerHTML = `
      <div class="col p-3">
        <div onclick="location.href='#/shop/${listing.id}';" style="cursor:pointer;" class="card h-100">
          <div class="card-body d-flex h-100">
            <img src="http://localhost:3000${listing.images[0].url}" class="w-100 align-self-center" alt="${listing.brand} - ${listing.model}">
          </div>  
          <div class="card-footer">
            <h5 class="card-title">${listing.brand} - ${listing.model}</h5>
            <p class="card-text">${listing.year}, ${listing.size}</p>
            <p class="card-text">${$.formatMoney(listing.price)} <br> <small class="text-muted"><del>${$.formatMoney(listing.msrp)}</del></small></p>
          </div>
        </div>
      </div>
    `;
  };
}
```


## Features
* Full stack web application utilizing Rails/Postgres back-end with a Vanilla JS and Bootstrap 4 front-end.
* Authorization and Authentication implemented with JWT and Bcrypt.
* Users can create an account, list items for sale, upload photos for those items, edit, and delete their listings.
* Uploaded photos are formatted immediately to fit the layout of the site.
* Users can browse, add items to their cart, and checkout without logging in.

## Status
Project is: ongoing, with work on editing listings, uploading mulitple images, and styling improvements.

## Inspiration
[The Pro's Closet](https://www.theproscloset.com) and [Gear Trade](https://www.geartrade.com)

## Contact
Created by [Sam Evans](https://www.linkedin.com/in/evansst/)

## License
[Click to view](https://github.com/evansst/Planks-and-Cranks/blob/master/LICENSE.md)