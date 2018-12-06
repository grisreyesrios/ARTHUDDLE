import { Sortable } from '@shopify/draggable';


function sortItems() {

  const sortable = new Sortable(document.querySelectorAll('.sortable-dropzone'), {
    draggable: '.sortable-item'
  });

  const form = document.getElementById('searchForm');
  sortable.on('sortable:stop', () => {

    const dropzone = document.getElementById('search-box-drop');
    const items = Array.from(dropzone.children);
    removeAddedField()
    items.forEach((item, index) => {
      console.log(item)
       let value = item.dataset.value;
       let categoryField = document.getElementById('categories');
/*      item.classList.add('category-field-added')
      item.classList.add('bigger')*/
       value = item.dataset.value;
       categoryField = document.getElementById('categories');

       let cloneField = categoryField.cloneNode(true)
      cloneField.id = categoryField.id + "_" + index
      cloneField.value = value
       console.log(cloneField)
      console.log(cloneField)
      categoryField.insertAdjacentElement('afterend',cloneField);

    })
  });
}

sortItems();

function removeAddedField() {
  const fields = document.querySelectorAll('#searchForm > .category-field-added')
  fields.forEach((field) => field.remove())
}
/*setInterval( function search()  {
  var count = 0
  var searchBox = document.querySelector("#search-box-drop > ul")
  if (searchBox) {
    var searchBoxInit = searchBox.childElementCount


  if(searchBoxInit > count) {
    var count = searchBoxInit
    }
}}, 1000);
*/

