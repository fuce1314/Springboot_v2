
function makeHeadImgByUserName(name) {
    var nick = "未";
    if (name) {
        nick = name.charAt(0);
    }
    var fontSize = 14;
    var fontWeight = 'normal';

    var canvas = document.getElementById('canvas');
    if (canvas) {
        canvas.remove();
    } else {
        var html = "<canvas id='canvas' style='display:none'></canvas>";
        $("body").append(html);
        canvas = document.getElementById('canvas');
    }
    canvas.width = 28;
    canvas.height = 28;
    var context = canvas.getContext('2d');
    //头像背景颜色设置
    context.fillStyle = '#2D89EF';
    context.fillRect(0, 0, canvas.width, canvas.height);
    //头像字体颜色设置
    context.fillStyle = '#FFFFFF';
    context.font = fontWeight + ' ' + fontSize + 'px sans-serif';
    context.textAlign = 'center';
    context.textBaseline = "middle";
    context.fillText(nick, fontSize, fontSize);
    return canvas.toDataURL("image/png");
}