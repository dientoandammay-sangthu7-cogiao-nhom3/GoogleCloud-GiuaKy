$(document).ready(function() {
    var h = 1; // Giờ
    var m = 30; // Phút
    var s = 0; // Giây
    start();

    function start() {
        var timeout = null; // Timeout
        /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/


        /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
        // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
        //  - giảm số phút xuống 1 đơn vị
        //  - thiết lập số giây lại 59
        if (s == -1) {
            m -= 1;
            s = 59;
        }

        // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
        //  - giảm số giờ xuống 1 đơn vị
        //  - thiết lập số phút lại 59
        if (m == -1) {
            h -= 1;
            m = 59;
        }

        // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
        //  - Dừng chương trình
        if (h == -1) {
            alert('Hết giờ');
            clearTimeout(timeout);
            $(".DongHo").hide();
            return;
        }

        /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
        setInterval(function() {
            $("#sec").html((s < 10 ? "0" : "") + s);
        }, 1000);

        setInterval(function() {
            $("#min").html((m < 10 ? "0" : "") + m);
        }, 1000);

        setInterval(function() {
            $("#hours").html((h < 10 ? "0" : "") + h);
        }, 1000);

        /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
        timeout = setTimeout(function() {
            s--;
            start();
        }, 1000);
    }

    /*$('#pagination-demo').twbsPagination({
        totalPages: 16,
        visiblePages: 6,
        next: 'Next',
        prev: 'Prev',
        onPageClick: function (event, page) {
            //fetch content and render here
            $('#page-content').text('Page ' + page) + ' content here';
        }
    });*/
});