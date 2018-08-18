var parentTopHeight;
var parentBottomHeight;
var parentTopHeight_left;
var parentBottomHeight_left;
var parentTopHeight_middle;
var parentBottomHeight_middle;
var fixHeight;
var skinName;
var themeColor = "blue";
var broswerFlag;
var fontSize = 12;
var prePath = "../../";
var exitVtab = 0;
var vtabIdx = 0;
var hasIframe = 0;
var parentScrollHeight;
var boxWhiteBg = false;
var hasScrollContent = true;
var splitMode = false;
var positionTarget = "";
var box2Custom = false;
var box3Custom = false;
var box4Custom = false;
var boxIe6Flag = 0;
var boxIe7Flag = 0;
var isHeadFixMode = 0;
var headFixExcude = 0;
var headFixExcude2 = 0;
var depth = 500;
$(function () {
    $("div,input,textarea,button,select,form,table,a,img").each(function () {
        if ($(this).hasClass("box1") || $(this).hasClass("box2") || $(this).hasClass("box3") || $(this).hasClass("box4")) {} else {
            $(this).render();
        }
    });
});

(function (a) {
    a.fn.render = function () {
        if (a(this).hasClass("spliter")) {
            try {
                a(this).spliterRender()
            } catch (b) {
                alert("分隔条出错，注意脚本的引入：spliter.js")
            }
        }
        if (a(this).is("input")) {
            if (a(this).attr("type") == "text") {
                if (a(this).hasClass("autoComplete")) {
                    if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                        a(this).textInputStyleRender()
                    }
                    try {
                        a(this).attr("trueType", "autoComplete");
                        a(this).autoCompleteRender()
                    } catch (b) {
                        alert("自动完成框出错，注意脚本的引入：autoComplete.js")
                    }
                }
                if (a(this).hasClass("autoCompleteIcon")) {
                    a(this).attr("trueType", "autoComplete");
                    a(this).textInputStyleRender()
                } else {
                    if (a(this).hasClass("color")) {
                        if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                            a(this).textInputStyleRender()
                        }
                        try {
                            a(this).attr("trueType", "color");
                            a(this).colorRender()
                        } catch (b) {
                            alert("颜色选择器出错，注意脚本的引入：color.js")
                        }
                    } else {
                        if (a(this).hasClass("date")) {
                            if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                                a(this).attr("trueType", "date");
                                a(this).dateRender()
                            }
                        } else {
                            if (a(this).hasClass("dateIcon")) {
                                a(this).attr("trueType", "date");
                                a(this).textInputStyleRender()
                            } else {
                                if (a(this).hasClass("keypad")) {
                                    if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                                        a(this).textInputStyleRender()
                                    }
                                    try {
                                        a(this).attr("trueType", "keypad");
                                        a(this).keypadRender()
                                    } catch (b) {
                                        alert("软键盘控件出错，注意脚本的引入：keypad.js")
                                    }
                                } else {
                                    if (a(this).hasClass("stepper")) {
                                        if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                                            a(this).textInputStyleRender()
                                        }
                                        try {
                                            a(this).attr("trueType", "stepper");
                                            a(this).stepperRender()
                                        } catch (b) {
                                            alert("数字步进器出错，注意脚本的引入：stepper.js")
                                        }
                                    } else {
                                        if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                                            a(this).attr("trueType", "textinput");
                                            a(this).textinputRender()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                if (a(this).attr("type") == "button" || a(this).attr("type") == "submit" || a(this).attr("type") == "reset") {
                    if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                        a(this).buttonInputRender()
                    }
                } else {
                    if (a(this).attr("type") == "file") {
                        if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                            a(this).attr("trueType", "file");
                            a(this).fileRender()
                        }
                    } else {
                        if (a(this).attr("type") == "password") {
                            if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                                a(this).attr("trueType", "password");
                                a(this).passInputRender()
                            }
                            if (a(this).hasClass("keypad")) {
                                if (a(this).attr("keepDefaultStyle") == "true" || a(this).attr("keepDefaultStyle") == true) {} else {
                                    a(this).textInputStyleRender()
                                }
                                try {
                                    a(this).attr("trueType", "keypad");
                                    a(this).keypadRender()
                                } catch (b) {
                                    alert("软键盘控件出错，注意脚本的引入：keypad.js")
                                }
                            }
                        } else {
                            if (a(this).attr("type") == "radio") {
                                a(this).attr("trueType", "radio")
                            } else {
                                if (a(this).attr("type") == "checkbox") {
                                    a(this).attr("trueType", "checkbox")
                                } else {
                                    if (a(this).attr("type") == "hidden") {
                                        a(this).attr("trueType", "hidden")
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } 
    };
    
    a.fn.textinputRender = function () {
        if (a(this).attr("class") == "keypad") {
            return
        }
        a(this).addClass("textinput");
        var b = null;
        a(this).hover(function () {
            if (b != a(this)[0]) {
                a(this).removeClass("textinput");
                a(this).addClass("textinput_hover")
            }
        }, function () {
            if (b != a(this)[0]) {
                a(this).removeClass("textinput_hover");
                a(this).addClass("textinput")
            }
        });
        a(this).focus(function () {
            b = a(this)[0];
            a(this).removeClass("textinput");
            a(this).removeClass("textinput_hover");
            a(this).addClass("textinput_click")
        });
        a(this).blur(function () {
            b = null;
            a(this).removeClass("textinput_click");
            a(this).addClass("textinput")
        });
        if (a(this).attr("clearable") == "true") {
            a(this).clearableTextField()
        }
        if (a(this).attr("maxNum") != null) {
            a(this).maxlength({
                maxCharacters: parseInt(a(this).attr("maxNum"))
            })
        }
        if (a(this).attr("watermark") != null) {
            a(this).watermark("watermark", a(this).attr("watermark"))
        }
    };
    a.fn.textInputStyleRender = function () {
        var b = null;
        if (a(this).attr("inputMode")) {
            var c = a(this).attr("inputMode");
            if (c == "numberOnly") {
                a(this)[0].onkeyup = function () {
                    a(this)[0].value = a(this)[0].value.replace(/\D/g, "")
                };
                a(this)[0].onafterpaste = function () {
                    a(this)[0].value = a(this)[0].value.replace(/\D/g, "")
                }
            }
        }
        a(this).hover(function () {
            if (b != a(this)[0]) {
                a(this).addClass("date_hover")
            }
        }, function () {
            if (b != a(this)[0]) {
                a(this).removeClass("date_hover")
            }
        });
        a(this).focus(function () {
            b = a(this)[0];
            a(this).removeClass("date_hover");
            a(this).addClass("date_click")
        });
        a(this).blur(function () {
            b = null;
            a(this).removeClass("date_click")
        })
    };
    a.fn.passInputRender = function () {
        var b = null;
        a(this).addClass("textinput");
        if (a(this).attr("inputMode")) {
            var c = a(this).attr("inputMode");
            if (c == "numberOnly") {
                a(this)[0].onkeyup = function () {
                    a(this)[0].value = a(this)[0].value.replace(/\D/g, "")
                };
                a(this)[0].onafterpaste = function () {
                    a(this)[0].value = a(this)[0].value.replace(/\D/g, "")
                }
            }
        }
        a(this).hover(function () {
            if (b != a(this)[0]) {
                a(this).removeClass("textinput");
                a(this).addClass("textinput_hover")
            }
        }, function () {
            if (b != a(this)[0]) {
                a(this).removeClass("textinput_hover");
                a(this).addClass("textinput")
            }
        });
        a(this).focus(function () {
            b = a(this)[0];
            a(this).removeClass("textinput");
            a(this).removeClass("textinput_hover");
            a(this).addClass("textinput_click")
        });
        a(this).blur(function () {
            b = null;
            a(this).removeClass("textinput_click");
            a(this).addClass("textinput")
        });
        if (a(this).attr("clearable") == "true") {
            a(this).clearableTextField()
        }
        if (a(this).attr("maxNum") != null) {
            a(this).maxlength({
                maxCharacters: parseInt(a(this).attr("maxNum"))
            })
        }
        if (a(this).attr("checkStrength") == "true") {
            a(this).password_strength()
        }
        a(this).caps(function (d) {
            if (jQuery.browser.safari) {
                return
            }
            if (d) {
                a.cursorMessage("注意：大写键开启了")
            } else {}
        })
    };
})(jQuery);


jQuery.fn.caps = function (a) {
    return this.keypress(function (f) {
        var b = f.which ? f.which : (f.keyCode ? f.keyCode : -1);
        var d = f.shiftKey ? f.shiftKey : (f.modifiers ? !! (f.modifiers & 4) : false);
        var g = ((b >= 65 && b <= 90) && !d) || ((b >= 97 && b <= 122) && d);
        a.call(this, g)
    })
};




