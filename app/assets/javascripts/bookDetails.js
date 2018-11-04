const fetchPreview = function(book) {
  const googleURL = `https://www.googleapis.com/books/v1/volumes?q=${ book }`;
  $.getJSON(googleURL, {}).done(addPreview);
};

const addPreview = function(info) {
  console.log(info);
  const previewLink = info.items["0"].volumeInfo.previewLink
  console.log(previewLink);
  $('#preview').attr('href', previewLink);
}

$(document).ready(function() {
  const book = $('h1').text();
  let label = $('#toggle_description').text();
  const button = $('#toggle_description');
  const description = $('#book_description');

  fetchPreview(book);

  button.on('click', function() {
    if (label === 'View description') {
      description.removeClass('hidden').addClass('visible');
      label = 'Hide description';
      button.text(label);
    } else if (label === 'Hide description') {
      description.removeClass('visible').addClass('hidden');
      label = 'View description';
      button.text(label);
    }
  });
});
