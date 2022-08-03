/**

 @Name：layui.form 表单组件
 @Author：贤心
 @License：MIT
    
 */
 
layui.define('layer', function(exports){
  "use strict";
  
  var $ = layui.$
  ,layer = layui.layer
  ,hint = layui.hint()
  ,device = layui.device()
  
  ,MOD_NAME = 'form', ELEM = '.layui-form', THIS = 'layui-this'
  ,SHOW = 'layui-show', HIDE = 'layui-hide', DISABLED = 'layui-disabled'
  
  ,Form = function(){
    this.config = {
      verify: {
        required: [
          /[\S]+/
          ,'必填项不能为空'
        ]
        ,phone: [
          /^1\d{10}$/
          ,'请输入正确的手机号'
        ]
        ,email: [
          /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
          ,'邮箱格式不正确'
        ]
        ,url: [
          /(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/
          ,'链接格式不正确'
        ]
        ,number: function(value){
          if(!value || isNaN(value)) return '只能填写数字'
        }
        ,date: [
          /^(\d{4})[-\/](\d{1}|0\d{1}|1[0-2])([-\/](\d{1}|0\d{1}|[1-2][0-9]|3[0-1]))*$/
          ,'日期格式不正确'
        ]
        ,identity: [
          /(^\d{15}$)|(^\d{17}(x|X|\d)$)/
          ,'请输入正确的身份证号'
        ]
      }
    };
  };
  
  //全局设置
  Form.prototype.set = function(options){
    var that = this;
    $.extend(true, that.config, options);
    return that;
  };
  
  //验证规则设定
  Form.prototype.verify = function(settings){
    var that = this;
    $.extend(true, that.config.verify, settings);
    return that;
  };
  
  //表单事件监听
  Form.prototype.on = function(events, callback){
    return layui.onevent.call(this, MOD_NAME, events, callback);
  };
  
  //赋值/取值
  Form.prototype.val = function(filter, object){
    var that = this
    ,formElem = $(ELEM + '[lay-filter="' + filter +'"]');
    
    //遍历
    formElem.each(function(index, item){
      var itemForm = $(this);
      
      //赋值
      layui.each(object, function(key, value){
        var itemElem = itemForm.find('[name="'+ key +'"]')
        ,type;
        
        //如果对应的表单不存在，则不执行
        if(!itemElem[0]) return;
        type = itemElem[0].type;
        
        //如果为复选框
        if(type === 'checkbox'){
          itemElem[0].checked = value;
        } else if(type === 'radio') { //如果为单选框
          itemElem.each(function(){
            if(this.value == value ){
              this.checked = true
            }     
          });
        } else { //其它类型的表单
          itemElem.val(value);
        }
      });
    });
    
    form.render(null, filter);
    
    //返回值
    return that.getValue(filter);
  };
  
  //取值
  Form.prototype.getValue = function(filter, itemForm){
    itemForm = itemForm || $(ELEM + '[lay-filter="' + filter +'"]').eq(0);
        
    var nameIndex = {} //数组 name 索引
    ,field = {}
    ,fieldElem = itemForm.find('input,select,textarea') //获取所有表单域
    
    layui.each(fieldElem, function(_, item){
      item.name = (item.name || '').replace(/^\s*|\s*&/, '');
      
      if(!item.name) return;
      
      //用于支持数组 name
      if(/^.*\[\]$/.test(item.name)){
        var key = item.name.match(/^(.*)\[\]$/g)[0];
        nameIndex[key] = nameIndex[key] | 0;
        item.name = item.name.replace(/^(.*)\[\]$/, '$1['+ (nameIndex[key]++) +']');
      }
      
      if(/^checkbox|radio$/.test(item.type) && !item.checked) return;      
		if((item.type).indexOf("multiple") != -1) {
                field[item.name] = $(item).val()
            } else {
                field[item.name] = item.value;
            }
    });
    
    return field;
  };
  
   //查找指定的元素在数组中的位置
    Array.prototype.indexOfElem = function(val){
        for (var i = 0; i < this.length; i++) {
            if (this[i] == val) return i;
        }
        return -1;
    }
 
    //得到元素的索引
    Array.prototype.removeElem = function(val) {
        var index = this.indexOfElem(val);
        if (index > -1) {
            this.splice(index, 1);
        }
    };
 
    //placeholder是否显示
    Form.prototype.hidePlaceholder = function(title,select){
        //判断是否全部删除，如果全部删除则展示提示信息
        if(title.find(".multiSelect a").length != 0){
            title.children("input.layui-input").attr("placeholder","");
        }else{
            title.children("input.layui-input").attr("placeholder",select.find("option:eq(0)").text());
        }
    }
  
  
  //表单控件渲染
  Form.prototype.render = function(type, filter){
    var that = this
    ,elemForm = $(ELEM + function(){
      return filter ? ('[lay-filter="' + filter +'"]') : '';
    }())
    ,items = {
      
      //下拉选择框
      select: function(){
        var TIPS = '请选择', CLASS = 'layui-form-select', TITLE = 'layui-select-title'
        ,NONE = 'layui-select-none', initValue = '', thatInput
        ,selects = elemForm.find('select')
        
        //隐藏 select
        ,hide = function(e, clear){
          if(!$(e.target).parent().hasClass(TITLE) || clear){
            $('.'+CLASS).removeClass(CLASS+'ed ' + CLASS+'up');
            thatInput && initValue && thatInput.val(initValue);
          }
          thatInput = null;
        }
        
        //各种事件
        ,events = function(reElem, disabled, isSearch){
			var select = $(this)
				,title = reElem.find('.' + TITLE)
				,input = title.find('input')
				,multiSelect = title.find(".multiSelect")
				,dl = reElem.find('dl:eq(0)')
				,dds = dl.find('div>dd').length==0 ? dl.find('dd') : dl.find('div>dd')
				,index =  this.selectedIndex //当前选中的索引
				,nearElem //select 组件当前选中的附近元素，用于辅助快捷键功能
				,omit = typeof select.attr("lay-omit") === 'undefined' // 简写为 已选择x条
				,isMulti = typeof select.attr('multiple') && typeof select.attr('multiple') === 'string'
				,direction = select.attr('lay-direction');

			that.hidePlaceholder(title,select);
          if(disabled) return;
          
          //展开下拉
          var showDown = function(){
            var top = reElem.offset().top + reElem.outerHeight() + 5 - $win.scrollTop()
            ,dlHeight = dl.outerHeight();
            
            index = select[0].selectedIndex; //获取最新的 selectedIndex
			$("body").find("."+CLASS).removeClass(CLASS+'ed'); // 收起其他下拉框
            reElem.addClass(CLASS+'ed');
            dds.removeClass(HIDE);
            nearElem = null;

             //初始选中样式
			if (!isMulti) {
				dds.eq(index).addClass(THIS).siblings().removeClass(THIS);
			}

            //上下定位识别
			if(top + dlHeight > $win.height() && top >= dlHeight){
				reElem.addClass(CLASS + 'up');
			}
			if (typeof direction != 'undefined') {
				switch (direction) {
					case 'up':
						reElem.addClass(CLASS + 'up');
						break;
					case 'down':
						reElem.removeClass(CLASS + 'up')
						break;
				}
			}
            
            followScroll();
          }
          
          //隐藏下拉
          ,hideDown = function(choose){
            reElem.removeClass(CLASS+'ed ' + CLASS+'up');
            input.blur();
            nearElem = null;
            
            if(choose) return;
            
            notOption(input.val(), function(none){
              var selectedIndex = select[0].selectedIndex;
              
              //未查询到相关值
              if(none){
                initValue = $(select[0].options[selectedIndex]).html(); //重新获得初始选中值
                
                //如果是第一项，且文本值等于 placeholder，则清空初始值
                if(selectedIndex === 0 && initValue === input.attr('placeholder')){
                  initValue = '';
                };

                //如果有选中值，则将输入框纠正为该值。否则清空输入框
                input.val(initValue || '');
              }
            });
          }
          
          //定位下拉滚动条
          ,followScroll = function(){  
            var thisDd = dl.children('dd.'+ THIS);
            
            if(!thisDd[0]) return;
            
            var posTop = thisDd.position().top
            ,dlHeight = dl.height()
            ,ddHeight = thisDd.height();
            
            //若选中元素在滚动条不可见底部
            if(posTop > dlHeight){
              dl.scrollTop(posTop + dl.scrollTop() - dlHeight + ddHeight - 5);
            }
            
            //若选择玄素在滚动条不可见顶部
            if(posTop < 0){
              dl.scrollTop(posTop + dl.scrollTop() - 5);
            }
          };
          
          //点击标题区域
		title.on('click', function(e){
			if (isMulti) {
				reElem.hasClass(CLASS + 'ed') ? hideDown(true): showDown();
				dl.find(".layui-input").val("");
				setTimeout(function () {  // 直接写focus，会失败。。
					dl.find(".layui-input").focus();
				},500)
			} else {
				reElem.hasClass(CLASS+'ed') ? (
					hideDown()
				) : (
					hide(e, true),
						showDown()
				);
				dl.find('.'+NONE).remove();
			}
			e.stopPropagation();
		});
          
          //点击箭头获取焦点
          title.find('.layui-edge').on('click', function(){
            input.focus();
          });
          
          //select 中 input 键盘事件
          input.on('keyup', function(e){ //键盘松开
            var keyCode = e.keyCode;
            
            //Tab键展开
            if(keyCode === 9){
              showDown();
            }
          }).on('keydown', function(e){ //键盘按下
            var keyCode = e.keyCode;

            //Tab键隐藏
            if(keyCode === 9){
              hideDown();
            }
            
            //标注 dd 的选中状态
            var setThisDd = function(prevNext, thisElem1){
              var nearDd, cacheNearElem
              e.preventDefault();

              //得到当前队列元素  
              var thisElem = function(){
                var thisDd = dl.children('dd.'+ THIS);
                
                //如果是搜索状态，且按 Down 键，且当前可视 dd 元素在选中元素之前，
                //则将当前可视 dd 元素的上一个元素作为虚拟的当前选中元素，以保证递归不中断
                if(dl.children('dd.'+  HIDE)[0] && prevNext === 'next'){
                  var showDd = dl.children('dd:not(.'+ HIDE +',.'+ DISABLED +')')
                  ,firstIndex = showDd.eq(0).index();
                  if(firstIndex >=0 && firstIndex < thisDd.index() && !showDd.hasClass(THIS)){
                    return showDd.eq(0).prev()[0] ? showDd.eq(0).prev() : dl.children(':last');
                  }
                }

                if(thisElem1 && thisElem1[0]){
                  return thisElem1;
                }
                if(nearElem && nearElem[0]){
                  return nearElem;
                }
       
                return thisDd;
                //return dds.eq(index);
              }();
              
              cacheNearElem = thisElem[prevNext](); //当前元素的附近元素
              nearDd =  thisElem[prevNext]('dd:not(.'+ HIDE +')'); //当前可视元素的 dd 元素

              //如果附近的元素不存在，则停止执行，并清空 nearElem
              if(!cacheNearElem[0]) return nearElem = null;
              
              //记录附近的元素，让其成为下一个当前元素
              nearElem = thisElem[prevNext]();

              //如果附近不是 dd ，或者附近的 dd 元素是禁用状态，则进入递归查找
              if((!nearDd[0] || nearDd.hasClass(DISABLED)) && nearElem[0]){
                return setThisDd(prevNext, nearElem);
              }
              
              nearDd.addClass(THIS).siblings().removeClass(THIS); //标注样式
              followScroll(); //定位滚动条
            };
            
            if(keyCode === 38) setThisDd('prev'); //Up 键
            if(keyCode === 40) setThisDd('next'); //Down 键
            
            //Enter 键
            if(keyCode === 13){ 
              e.preventDefault();
              dl.children('dd.'+THIS).trigger('click');
            }
          });
          
          //检测值是否不属于 select 项
          var notOption = function(value, callback, origin){
            var num = 0;
			var ignoreCase =  typeof(select.attr("lay-case"))=="undefined"; // 忽略大小写
            layui.each(dds, function(){
              var othis = $(this)
              ,text = othis.text()
               ,not = ignoreCase?text.toLowerCase().indexOf(value.toLowerCase()) === -1 : text.indexOf(value) === -1;
              if(value === '' || (origin === 'blur') ? value !== text : not) num++;
              origin === 'keyup' && othis[not ? 'addClass' : 'removeClass'](HIDE);
            });
            var none = num === dds.length;
            return callback(none), none;
          };
          
          //搜索匹配
          var search = function(e){
            var value = this.value, keyCode = e.keyCode;
            
            if(keyCode === 9 || keyCode === 13 
              || keyCode === 37 || keyCode === 38 
              || keyCode === 39 || keyCode === 40
            ){
              return false;
            }
            
            notOption(value, function(none){
              if(none){
                dl.find('.'+NONE)[0] || dl.append('<p class="'+ NONE +'">无匹配项</p>');
              } else {
                dl.find('.'+NONE).remove();
              }
            }, 'keyup');
            
            if(value === ''){
              dl.find('.'+NONE).remove();
            }
            
            followScroll(); //定位滚动条
          };
          
          if(isSearch){
		   if (isMulti) {
				input.on('keyup', search)
			} else {
            input.on('keyup', search).on('blur', function(e){
               thatInput = input; //当前的 select 中的 input 元素
				var cur_option = $(select[0].options[selectedIndex])
				initValue = cur_option.attr('value') == '' ? '' : cur_option.html(); //重新获得初始选中值
 
              //如果是第一项，且文本值等于 placeholder，则清空初始值
              if(selectedIndex === 0 && initValue === input.attr('placeholder')){
                initValue = '';
              };
              
              setTimeout(function(){
                notOption(input.val(), function(none){
                  initValue || input.val(''); //none && !initValue
                }, 'blur');
              }, 200);
            });
			}
          }

          //选择
          dds.on('click', function(){
            var othis = $(this), value = othis.attr('lay-value');
            var filter = select.attr('lay-filter'); //获取过滤器
            
            if(othis.hasClass(DISABLED)) return false;
			
			if (isMulti) {
 
                                var valueStr = select.val() || [];
                                if(othis.find("input[type='checkbox']").is(':checked')){
                                    if (omit) {
                                        multiSelect.html(multiSelect.html() + "<a href='javascript:;'><span lay-value='"+othis.attr('lay-value')+"'>"+othis.find("span").text()+"</span><i></i></a>");
                                    } else {
                                        input.eq(0).val("已选择"+othis.parent().find('[type=checkbox]:checked').length+"条");
                                    }
                                    valueStr.push(value);
                                }else{
                                    if (omit) {
                                        multiSelect.find("a").each(function(){
                                            if($(this).find("span").attr('lay-value') == othis.attr('lay-value')){
                                                $(this).remove();
                                                valueStr.removeElem(value);
                                            }
                                        })
                                    } else {
                                        var num =othis.parent().find('[type=checkbox]:checked').length;
                                        if (num == 0) {
                                            input.eq(0).val("");
                                        } else {
                                            input.eq(0).val("已选择"+num+"条");
                                        }
                                        valueStr.removeElem(value);
                                    }
 
                                }
                                select.val(valueStr).removeClass('layui-form-danger');
                                layui.event.call(this, MOD_NAME, 'select('+ filter +')', {
                                    elem: select[0]
                                    ,value: valueStr
                                    ,othis: reElem
                                    ,current_value: value
                                });
                                that.hidePlaceholder(title,select);
                            } else {
            
            if(othis.hasClass('layui-select-tips')){
              input.val('');
            } else {
              input.val(othis.text());
              othis.addClass(THIS);
            }

            othis.siblings().removeClass(THIS);
            select.val(value).removeClass('layui-form-danger')
            layui.event.call(this, MOD_NAME, 'select('+ filter +')', {
              elem: select[0]
              ,value: value
              ,othis: reElem
            });

            hideDown(true);
			}
            return false;
          });
          
          reElem.find('dl>dt').on('click', function(e){
            return false;
          });
		  dl.on('click', function (e) {
                            if (isMulti) {
                                e.stopPropagation();
                            }
                        });
 
                        // 全选、取消、反选
                        dl.find('.multiOption').on('click', function (e) {
                            switch ($(this).data('value')) {
                                case 'all' :
                                    dl.find('[type=checkbox]:not(:checked)').prop('checked', true);
                                    select.children('option[value!=""]').prop('selected', true)
                                    handleMultiOption();
                                    break;
                                case 'none':
                                    dl.find('[type=checkbox]:checked').prop('checked', false);
                                    select.children('option[value!=""]').prop('selected', false);
                                    handleMultiOption();
                                    break;
                                case 'inverse':
                                    var checkedBox = dl.find('[type=checkbox]:checked');
                                    dl.find('[type=checkbox]:not(:checked)').prop('checked', true);
                                    checkedBox.prop('checked', false)
 
                                    var selectedOption = select.children('option[value!=""]:not(:selected)')
                                    select.children('option[value!=""]:selected').prop('selected', false)
                                    selectedOption.prop('selected', true)
                                    handleMultiOption();
                                    break;
                            }
 
                            e.stopPropagation(); // 阻止事件冒泡，使下拉框长显示
                        });
 
                        function handleMultiOption () {
                            form.render('checkbox');
                            var valueStr = select.val() || [],
                                selectedOption = select.children('option:selected'),
                                filter = select.attr('lay-filter');
                            if (omit) {
                                var options = [];
                                for (var i = 0; i < selectedOption.length; i++) {
                                    options.push("<a href='javascript:;'><span lay-value='"+(selectedOption[i].value||selectedOption[i].text)+"'>"+selectedOption[i].text+"</span><i></i></a>");
                                }
                                multiSelect.find('a').remove();
                                multiSelect.append(options.join(''));
                            } else {
                                input.eq(0).val(selectedOption.length==0?"":"已选择"+selectedOption.length+"条");
                            }
 
                            select.removeClass('layui-form-danger');
                            layui.event.call(this, MOD_NAME, 'select('+ filter +')', {
                                elem: select[0]
                                ,value: valueStr
                                ,othis: reElem
                                ,current_value: ''
                            });
                            that.hidePlaceholder(title,select);
                        }
 
                        //多选删除
                        title.delegate(".multiSelect a i","click",function(e){
                            var valueStr = select.val() || [];
                            var _this = $(this);
                            e.stopPropagation();
                            title.find("dd").each(function(){
                                if($(this).attr('lay-value') == _this.siblings("span").attr('lay-value')){
                                    $(this).find("input").removeAttr("checked");
                                    $(this).find(".layui-form-checkbox").removeClass("layui-form-checked");
                                    valueStr.removeElem($(this).attr("lay-value"));
                                    select.val(valueStr);
                                    layui.event.call(this, MOD_NAME, 'select('+ select.attr('lay-filter') +')', {
                                        elem: select[0]
                                        ,value: valueStr
                                        ,othis: reElem
                                        ,current_value: _this.siblings("span").text()
                                    });
                                }
                            });
                            $(this).parent("a").remove();
                            that.hidePlaceholder(title,select);
                        });
          
          $(document).off('click', hide).on('click', hide); //点击其它元素关闭 select
        }
        
        selects.each(function(index, select){
          var othis = $(this)
          ,hasRender = othis.next('.'+CLASS)
			,disabled = this.disabled

			,selected = $(select.options[select.selectedIndex]) //获取当前选中项
			,optionsFirst = select.options[0]
			,isMulti = typeof othis.attr('multiple') && typeof othis.attr('multiple') === 'string'
			,value = isMulti?$(select).val():select.value
			,isTools = typeof othis.attr('lay-tools')=='undefined' || othis.attr('lay-tools') != 'false';
 
          
          if(typeof othis.attr('lay-ignore') === 'string') return othis.show();
          
          var isSearch = typeof othis.attr('lay-search') === 'string'
          ,placeholder = optionsFirst ? (
            optionsFirst.value ? TIPS : (optionsFirst.innerHTML || TIPS)
          ) : TIPS,inputValue =  !(typeof $(select).attr("lay-omit") === 'undefined')&&value!=null&&value.length>0 ? '已选择'+value.length+"条" : "";
  if (isMulti) {
                        var reElem = $(['<div class="' + (isMulti ? '' : 'layui-unselect ') + CLASS + (disabled ? ' layui-select-disabled' : '') + '">'
                            , '<div class="' + TITLE + '"><input type="text" class="layui-input" value="'+inputValue+'" placeholder="' + placeholder + '"><div class="layui-input multiSelect" >' + function(){
                                var aLists = [];
                                if(typeof $(select).attr("lay-omit")==='undefined' && value != null && value != undefined && value.length != 0){
                                    for(var aList = 0;aList<value.length;aList++){
                                        if(value[aList]){
                                            var chooseText = '', chooseValue = '';
                                            $(select).find('option').each(function (i, ele) {
                                                if (typeof $(this).attr('value') == 'undefined') {
                                                    if ($(this).text() == value[aList]) {
                                                        chooseText = chooseValue = $(this).text();
                                                        return false;
                                                    }
                                                } else if ($(this).attr('value') == value[aList]) {
                                                    chooseText = $(this).text();
                                                    chooseValue = $(this).attr('value');
                                                    return false;
                                                }
                                            });
                                            aLists.push("<a href='javascript:;'><span lay-value='"+chooseValue+"'>"+chooseText+"</span><i></i></a>")
                                        }
                                    }
                                }
                                return aLists.join('');
                            }(othis.find('*')) + '<i class="layui-edge"></i></div>'
                            , '<dl class="layui-anim layui-anim-upbit' + (othis.find('optgroup')[0] ? ' layui-select-group' : '') + '" '+ ((isSearch || isTools)?'style="overflow-y: hidden;"':'') +'>' + function (options) {
                                var arr = [], height=247 ,tools = '<dd class="layui-select-tips"><div class="multiOption" data-value="all"><i class="soul-icon soul-icon-quanxuan"></i>全选</div><div class="multiOption" data-value="none"><i class="soul-icon soul-icon-qingkong"></i>清空</div><div class="multiOption" data-value="inverse"><i class="soul-icon soul-icon-fanxuan"></i>反选</div></dd>';
                                layui.each(options, function (index, item) {
                                    if (index === 0 && !item.value) {
                                        if (isSearch) {
                                            arr.push('<dd lay-value="" class="layui-select-tips" style="padding-right: 10px; margin-bottom: 5px;"><input class="layui-input" placeholder="关键字搜索"></dd>');
                                            if (isTools) {
                                                arr.push(tools);
                                                height -= 37;
                                            }
                                        } else if (isTools) {
                                            arr.push(tools);
                                        } else {
                                            arr.push('<dd lay-value="" class="layui-select-tips">' + (item.innerHTML || TIPS) + '</dd>');
                                        }
                                    } else {
                                        if (index ===1 && (isSearch || isTools)) {
                                            arr.push('<div  style="max-height: '+height+'px; overflow-y: auto" >')
                                        }
                                        if(value != null && value != undefined && value.length != 0) {
                                            for (var checkedVal = 0; checkedVal < value.length; checkedVal++) {
                                                if (value[checkedVal] == item.value) {
                                                    arr.push('<dd lay-value="' + item.value + '">' + '<input type="checkbox" ' + (item.disabled ? "disabled" : "") + ' checked lay-filter="searchChecked" title="' + item.innerHTML + '" lay-skin="primary"></dd>');
                                                    return false;
                                                }
                                            }
                                        }
                                        arr.push('<dd lay-value="' + item.value + '">' + '<input type="checkbox" ' + (item.disabled ? "disabled" : "") + ' lay-filter="searchChecked" title="' + item.innerHTML + '" lay-skin="primary"></dd>');
                                    }
                                });
                                arr.length === 0 && arr.push('<dd lay-value="" class="' + DISABLED + '">没有选项</dd>');
                                if (isSearch || isTools) {
                                    arr.join("</div>");
                                }
                                return arr.join('');
                            }(othis.find('*')) + '</dl>'
                            , '</div>'].join(''));
 
                        hasRender[0] && hasRender.remove(); //如果已经渲染，则Rerender
                        othis.after(reElem);
                        events.call(this, reElem, disabled, isMulti);
                    } else {

          //替代元素
          var reElem = $(['<div class="'+ (isSearch ? '' : 'layui-unselect ') + CLASS 
          ,(disabled ? ' layui-select-disabled' : '') +'">'
            ,'<div class="'+ TITLE +'">'
              ,('<input type="text" placeholder="'+ placeholder +'" '
                +('value="'+ (value ? selected.html() : '') +'"') //默认值
                +((!disabled && isSearch) ? '' : ' readonly') //是否开启搜索
                +' class="layui-input'
                +(isSearch ? '' : ' layui-unselect') 
              + (disabled ? (' ' + DISABLED) : '') +'">') //禁用状态
            ,'<i class="layui-edge"></i></div>'
            ,'<dl class="layui-anim layui-anim-upbit'+ (othis.find('optgroup')[0] ? ' layui-select-group' : '') +'">'
            ,function(options){
              var arr = [];
              layui.each(options, function(index, item){
                if(index === 0 && !item.value){
                  arr.push('<dd lay-value="" class="layui-select-tips">'+ (item.innerHTML || TIPS) +'</dd>');
                } else if(item.tagName.toLowerCase() === 'optgroup'){
                  arr.push('<dt>'+ item.label +'</dt>'); 
                } else {
                  arr.push('<dd lay-value="'+ item.value +'" class="'+ (value === item.value ?  THIS : '') + (item.disabled ? (' '+DISABLED) : '') +'">'+ item.innerHTML +'</dd>');
                }
              });
              arr.length === 0 && arr.push('<dd lay-value="" class="'+ DISABLED +'">没有选项</dd>');
              return arr.join('');
            }(othis.find('*')) +'</dl>'
          ,'</div>'].join(''));
          
          hasRender[0] && hasRender.remove(); //如果已经渲染，则Rerender
          othis.after(reElem);          
          events.call(this, reElem, disabled, isSearch);
		 }
        });
      }
      
      //复选框/开关
      ,checkbox: function(){
        var CLASS = {
          checkbox: ['layui-form-checkbox', 'layui-form-checked', 'checkbox']
          ,_switch: ['layui-form-switch', 'layui-form-onswitch', 'switch']
        }
        ,checks = elemForm.find('input[type=checkbox]')
        
        ,events = function(reElem, RE_CLASS){
          var check = $(this);
          
          //勾选
          reElem.on('click', function(){
            var filter = check.attr('lay-filter') //获取过滤器
            ,text = (check.attr('lay-text')||'').split('|');

            if(check[0].disabled) return;
            
            check[0].checked ? (
              check[0].checked = false
              ,reElem.removeClass(RE_CLASS[1]).find('em').text(text[1])
            ) : (
              check[0].checked = true
              ,reElem.addClass(RE_CLASS[1]).find('em').text(text[0])
            );
            
            layui.event.call(check[0], MOD_NAME, RE_CLASS[2]+'('+ filter +')', {
              elem: check[0]
              ,value: check[0].value
              ,othis: reElem
            });
          });
        }
        
        checks.each(function(index, check){
          var othis = $(this), skin = othis.attr('lay-skin')
          ,text = (othis.attr('lay-text') || '').split('|'), disabled = this.disabled;
          if(skin === 'switch') skin = '_'+skin;
          var RE_CLASS = CLASS[skin] || CLASS.checkbox;
          
          if(typeof othis.attr('lay-ignore') === 'string') return othis.show();
          
          //替代元素
          var hasRender = othis.next('.' + RE_CLASS[0])
          ,reElem = $(['<div class="layui-unselect '+ RE_CLASS[0]
            ,(check.checked ? (' '+ RE_CLASS[1]) : '') //选中状态
            ,(disabled ? ' layui-checkbox-disbaled '+ DISABLED : '') //禁用状态
            ,'"'
            ,(skin ? ' lay-skin="'+ skin +'"' : '') //风格
          ,'>'
          ,function(){ //不同风格的内容
            var title = check.title.replace(/\s/g, '')
            ,type = {
              //复选框
              checkbox: [
                (title ? ('<span>'+ check.title +'</span>') : '')
                ,'<i class="layui-icon layui-icon-ok"></i>'
              ].join('')
              
              //开关
              ,_switch: '<em>'+ ((check.checked ? text[0] : text[1]) || '') +'</em><i></i>'
            };
            return type[skin] || type['checkbox'];
          }()
          ,'</div>'].join(''));

          hasRender[0] && hasRender.remove(); //如果已经渲染，则Rerender
          othis.after(reElem);
          events.call(this, reElem, RE_CLASS);
        });
      }
      
      //单选框
      ,radio: function(){
        var CLASS = 'layui-form-radio', ICON = ['&#xe643;', '&#xe63f;']
        ,radios = elemForm.find('input[type=radio]')
        
        ,events = function(reElem){
          var radio = $(this), ANIM = 'layui-anim-scaleSpring';
          
          reElem.on('click', function(){
            var name = radio[0].name, forms = radio.parents(ELEM);
            var filter = radio.attr('lay-filter'); //获取过滤器
            var sameRadio = forms.find('input[name='+ name.replace(/(\.|#|\[|\])/g, '\\$1') +']'); //找到相同name的兄弟
            
            if(radio[0].disabled) return;
            
            layui.each(sameRadio, function(){
              var next = $(this).next('.'+CLASS);
              this.checked = false;
              next.removeClass(CLASS+'ed');
              next.find('.layui-icon').removeClass(ANIM).html(ICON[1]);
            });
            
            radio[0].checked = true;
            reElem.addClass(CLASS+'ed');
            reElem.find('.layui-icon').addClass(ANIM).html(ICON[0]);
            
            layui.event.call(radio[0], MOD_NAME, 'radio('+ filter +')', {
              elem: radio[0]
              ,value: radio[0].value
              ,othis: reElem
            });
          });
        };
        
        radios.each(function(index, radio){
          var othis = $(this), hasRender = othis.next('.' + CLASS), disabled = this.disabled;
          
          if(typeof othis.attr('lay-ignore') === 'string') return othis.show();
          hasRender[0] && hasRender.remove(); //如果已经渲染，则Rerender
          
          //替代元素
          var reElem = $(['<div class="layui-unselect '+ CLASS 
            ,(radio.checked ? (' '+CLASS+'ed') : '') //选中状态
          ,(disabled ? ' layui-radio-disbaled '+DISABLED : '') +'">' //禁用状态
          ,'<i class="layui-anim layui-icon">'+ ICON[radio.checked ? 0 : 1] +'</i>'
          ,'<div>'+ function(){
            var title = radio.title || '';
            if(typeof othis.next().attr('lay-radio') === 'string'){
              title = othis.next().html();
              othis.next().remove();
            }
            return title
          }() +'</div>'
          ,'</div>'].join(''));

          othis.after(reElem);
          events.call(this, reElem);
        });
      }
    };
    type ? (
      items[type] ? items[type]() : hint.error('不支持的'+ type + '表单渲染')
    ) : layui.each(items, function(index, item){
      item();
    });
    return that;
  };
  
  //表单提交校验
  var submit = function(){
    var stop = null //验证不通过状态
    ,verify = form.config.verify //验证规则
    ,DANGER = 'layui-form-danger' //警示样式
    ,field = {}  //字段集合
    ,button = $(this) //当前触发的按钮
    ,elem = button.parents(ELEM) //当前所在表单域
    ,verifyElem = elem.find('*[lay-verify]') //获取需要校验的元素
    ,formElem = button.parents('form')[0] //获取当前所在的 form 元素，如果存在的话
    ,filter = button.attr('lay-filter'); //获取过滤器
   
    
    //开始校验
    layui.each(verifyElem, function(_, item){
      var othis = $(this)
      ,vers = othis.attr('lay-verify').split('|')
      ,verType = othis.attr('lay-verType') //提示方式
      ,value = othis.val();
      
      othis.removeClass(DANGER); //移除警示样式
      
      //遍历元素绑定的验证规则
      layui.each(vers, function(_, thisVer){
        var isTrue //是否命中校验
        ,errorText = '' //错误提示文本
        ,isFn = typeof verify[thisVer] === 'function';
        
        //匹配验证规则
        if(verify[thisVer]){
          var isTrue = isFn ? errorText = verify[thisVer](value, item) : !verify[thisVer][0].test(value);
          errorText = errorText || verify[thisVer][1];
          
          if(thisVer === 'required'){
            errorText = othis.attr('lay-reqText') || errorText;
          }
          
          //如果是必填项或者非空命中校验，则阻止提交，弹出提示
          if(isTrue){
            //提示层风格
            if(verType === 'tips'){
              layer.tips(errorText, function(){
                if(typeof othis.attr('lay-ignore') !== 'string'){
                  if(item.tagName.toLowerCase() === 'select' || /^checkbox|radio$/.test(item.type)){
                    return othis.next();
                  }
                }
                return othis;
              }(), {tips: 1});
            } else if(verType === 'alert') {
              layer.alert(errorText, {title: '提示', shadeClose: true});
            } else {
              layer.msg(errorText, {icon: 5, shift: 6});
            }
            
            //非移动设备自动定位焦点
            if(!device.android && !device.ios){
              setTimeout(function(){
                item.focus(); 
              }, 7);
            }
            
            othis.addClass(DANGER);
            return stop = true;
          }
        }
      });
      if(stop) return stop;
    });
    
    if(stop) return false;
    
    //获取当前表单值
    field = form.getValue(null, elem);
 
    //返回字段
    return layui.event.call(this, MOD_NAME, 'submit('+ filter +')', {
      elem: this
      ,form: formElem
      ,field: field
    });
  };

  //自动完成渲染
  var form = new Form()
  ,$dom = $(document), $win = $(window);
  
  form.render();
  
  //表单reset重置渲染
  $dom.on('reset', ELEM, function(){
    var filter = $(this).attr('lay-filter');
    setTimeout(function(){
      form.render(null, filter);
    }, 50);
  });
  
  //表单提交事件
  $dom.on('submit', ELEM, submit)
  .on('click', '*[lay-submit]', submit);
  
  exports(MOD_NAME, form);
});

 
