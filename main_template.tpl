<html>
    <head>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script>
        $(document).ready(function() {
            var grading = "http://2.bp.blogspot.com/_obuJBgNlxdw/TUY3qTfQFwI/AAAAAAAAADM/fWjkhGjC3uk/s1600/grades.jpg"
            $(".grade-tag").attr("src", grading);
        	initLoop();
        });

        var index = 0;
        var initLoop = function() {
        	var imagestring = "http://www.georgetowner.com/media/images/derivatives/article_f-grade2.jpg"
        	var images = [
        "http://m3.licdn.com/mpr/pub/image-shMnkGQWjvodV4NsYtRzVslQHh73i3nsaPZ-VJdWHqTS1tzSshM-ee0WHb4l1g5mMjSz/anuvind-menon.jpg",
"http://theshotokanway.com/images/images12/Sean%202.jpg",
"https://si0.twimg.com/profile_images/2567555145/76802_1513875204415_246646_n.jpg",
"http://m3.licdn.com/mpr/mpr/shrink_80_80/p/1/000/06b/335/2732334.jpg",
"http://www.malemodelscene.net/wp-content/uploads/2011/12/Ben-Taylor-Vincent-Ko-for-Pin-Up-Boys-021.jpg",
"http://www.flocyte.org/frtp/Instructors/David%20Galbraith%20Headshot.jpg",
"https://si0.twimg.com/profile_images/2724332160/80d41da71361943bf942dd1bd1d246eb.png",
"https://lh4.googleusercontent.com/-3snPACDRNqI/AAAAAAAAAAI/AAAAAAAAAAA/XCGd3UfW8hU/s250-c-k/photo.jpg",
"http://profile.ak.fbcdn.net/hprofile-ak-prn1/c170.50.621.621/s160x160/32355_10152269290540177_1878225291_n.jpg",
"http://profile.ak.fbcdn.net/hprofile-ak-ash3/c0.15.180.180/s160x160/36972_1525868270035_6408688_a.jpg",
"https://lh6.googleusercontent.com/-OkB0YOMyeUA/AAAAAAAAAAI/AAAAAAAAAAA/EEp3SfpjEA8/s250-c-k/photo.jpg"
        	]

            $(".image-tag").attr("src", images[index])
            var fail = "http://www.georgetowner.com/media/images/derivatives/article_f-grade2.jpg"
            var grading = "http://2.bp.blogspot.com/_obuJBgNlxdw/TUY3qTfQFwI/AAAAAAAAADM/fWjkhGjC3uk/s1600/grades.jpg"
                $.ajax({
                    url: "graph",
                    type: "GET",
                    success: function(data) {
                    	console.log(data["blink"]);
                        if (data["blink"]) {
                        	console.log(images[index])
                        	console.log(index)
                            	$(".grade-tag").show()
                        	$(".grade-tag").attr("src", fail)
                            index++;
                            setTimeout(function() {
                            	$(".grade-tag").hide()
                                $(".image-tag").attr("src", images[index])
                                if (index == images.length) {
                                    index = 0;
                                }
                            }, 500);
                            setTimeout(function() {
                                initLoop();
                            }, 1000);
                        }
                        else {
                            setTimeout(function() {
                                initLoop();
                            }, 1000);
                        }
                    }
                });
        }
    </script>
    </head>
    <body>
        <div class="image">
            <img class="image-tag" src=""></img>
        </div>
        <div class="grade">
            <img class="grade-tag" src=""></img>
        </div>
    </body>
</html>



