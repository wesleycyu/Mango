$(function () {
  // Find any elements in the page that have the class "delete-frog"
  // When any of those elements receive the "ajax:success" event, run this function
  $('.delete-user').on('ajax:success', function () {
    // Starting at the element that was clicked (this)
    // find the closest ancestor that is a "tr" element
    // and remove it
    $(this).closest('div.user_card').remove();
  });
});
