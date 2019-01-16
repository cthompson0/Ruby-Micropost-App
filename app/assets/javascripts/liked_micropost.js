// $(document).ready(function() {
//         $(".like").click(function (event) {
//             var counter = parseInt($(this).closest("li").find(".likes-counter").text(), 10);
//             counter++;
//             $(this).closest("li").find(".likes-counter").text(counter);
//             // Link value
//             var micropost_url = ($(this).attr("href"));
//             // Micropost ID
//             var micropost_id = $(this).closest("li").attr("id").slice(10);
//             event.preventDefault();
//             $(this).text("Unlike").attr("href", micropost_url + "/" + micropost_id);
//
//         });
//
//         $(".unlike").click(function () {
//             var counter = parseInt($(this).closest("li").find(".likes-counter").text(), 10);
//             counter--;
//             $(this).closest("li").find(".likes-counter").text(counter);
//             $(this).text("Like")
//         });
// });

// Save route URL to variable and set it back / forth
// toggle link text - Like & Unlike
