$(function() {
    $("#showbutton").click(function() {
        expanded = $(".user-bio").css("height") !== "0px";
        if (expanded) {
            $(this).html("show");
            $(".user-bio").css("padding-top", "0px");
            $(".user-bio").css("padding-bottom", "0px");
        }
        else {
            $(this).html("hide");
            $(".user-bio").css("padding-top", "10px");
            $(".user-bio").css("padding-bottom", "10px");
        }
        $(".user-bio").animate({
            height: (expanded ? "0px" : "100px")
        }, 200);
    });
});
