import { Sortable } from '@shopify/draggable';

const sortable = new Sortable(document.querySelectorAll('ul'), {
  draggable: 'li'
});


setInterval( function search()  {
  var count = 0
  var searchBoxInit = document.querySelector("#search-box-drop > ul").childElementCount
  if(searchBoxInit > count) {
    var count = searchBoxInit
    }
}, 1000);


