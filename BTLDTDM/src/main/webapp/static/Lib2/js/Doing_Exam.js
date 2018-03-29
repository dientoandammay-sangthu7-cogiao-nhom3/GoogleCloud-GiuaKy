$(document).ready(function() {

    var h = 0; // Giờ
    var m = 0; // Phút
    var s = 5; // Giây
    start();

    function start() {
        var timeout = null; // Timeout
        /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/

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
            alert('Hết giờ làm bài !!!!!');
            clearTimeout(timeout);
            $(".Clock").hide();
            return false;
        }

        /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
        setInterval(function() {
            $(".Second").html((s < 10 ? "0" : "") + s);
        }, 1000);

        setInterval(function() {
            $(".Minute").html((m < 10 ? "0" : "") + m);
        }, 1000);

        setInterval(function() {
            $(".Hour").html((h < 10 ? "0" : "") + h);
        }, 1000);

        /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
        timeout = setTimeout(function() {
            s--;
            start();
        }, 1000);
    }


});