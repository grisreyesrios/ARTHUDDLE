import { Sortable } from '@shopify/draggable';

const sortable = new Sortable(document.querySelectorAll('ul'), {
  draggable: 'li'
});


setInterval( function search()  {
  var count = 0
  var searchBox = document.querySelector("#search-box-drop > ul")
  if (searchBox) {
    var searchBoxInit = searchBox.childElementCount


  if(searchBoxInit > count) {
    var count = searchBoxInit
    }
}}, 1000);


