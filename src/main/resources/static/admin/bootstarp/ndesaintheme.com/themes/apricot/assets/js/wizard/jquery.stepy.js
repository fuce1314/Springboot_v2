/*!
 * jQuery Stepy - A Wizard Plugin
 * --------------------------------------------------------------
 *
 * jQuery Stepy is a plugin that generates a customizable wizard.
 *
 * Licensed under The MIT License
 *
 * @version        1.1.0
 * @since          2010-07-03
 * @author         Washington Botelho
 * @documentation  wbotelhos.com/stepy
 *
 * --------------------------------------------------------------
 *
 *  <form>
 *    <fieldset title="Step 1">
 *      <legend>description one</legend>
 *      <!-- inputs -->
 *    </fieldset>
 *
 *    <fieldset title="Step 2">
 *      <legend>description two</legend>
 *      <!-- inputs -->
 *    </fieldset>
 *
 *    <input type="submit" />
 *  </form>
 *
 *  $('form').stepy();
 *
 */

;(function($) {

  var methods = {
    init: function(settings) {
      return this.each(function() {
        methods.destroy.call(this);

        this.opt = $.extend({}, $.fn.stepy.defaults, settings);

        var self = this,
            that = $(this),
            id   = that.attr('id');

        if (id === undefined || id === '') {
          var id = methods._hash.call(self);

          that.attr('id', id);
        }

        // Remove Validator...
        if (self.opt.validate) {
          jQuery.validator.setDefaults({ ignore: self.opt.ignore });

          that.append('<div class="stepy-errors" />');
        }

        self.header = methods._header.call(self);
        self.steps  = that.children('fieldset');

        self.steps.each(function(index) {
          methods._createHead.call(self, this, index);
          methods._createButtons.call(self, this, index);
        });

        self.heads = self.header.children('li');

        self.heads.first().addClass('stepy-active');

        if (self.opt.finishButton) {
          methods._bindFinish.call(self);
        }

        // WIP...
            if (self.opt.titleClick) {
              self.heads.click(function() {
                var  array  = self.heads.filter('.stepy-active').attr('id').split('-'), // TODO: try keep the number in an attribute.
                  current  = parseInt(array[array.length - 1], 10),
                  clicked  = $(this).index();

                if (clicked > current) {
              if (self.opt.next && !methods._execute.call(that, self.opt.next, clicked)) {
                return false;
              }
            } else if (clicked < current) {
              if (self.opt.back && !methods._execute.call(that, self.opt.back, clicked)) {
                return false;
              }
            }

            if (clicked != current) {
              methods.step.call(self, (clicked) + 1);
            }
              });
          } else {
            self.heads.css('cursor', 'default');
          }

          if (self.opt.enter) {
            methods._bindEnter.call(self);
          }

          self.steps.first().find(':input:visible:enabled').first().select().focus();

        that.data({ 'settings': this.opt, 'stepy': true });
      });
    }, _bindEnter: function() {
      var self = this;

      self.steps.delegate('input[type="text"], input[type="password"]', 'keypress', function(evt) {
        var key = (evt.keyCode ? evt.keyCode : evt.which);

        if (key == 13) {
          evt.preventDefault();

          var buttons = $(this).closest('fieldset').find('.stepy-navigator');

          if (buttons.length) {
            var next = buttons.children('.button-next');

            if (next.length) {
              next.click();
            } else if (self.finish) {
              self.finish.click();
            }
          }
        }
      });
    }, _bindFinish: function() {
      var self   = this,
          that   = $(this),
          finish = that.children('input[type="submit"]');

      self.finish = (finish.length === 1) ? finish : that.children('.stepy-finish');

      if (self.finish.length) {
        var isForm   = that.is('form'),
            onSubmit = undefined;

        if (isForm && self.opt.finish) {
          onSubmit = that.attr('onsubmit');

          that.attr('onsubmit', 'return false;');
        }

        self.finish.on('click.stepy', function(evt) {
          if (self.opt.finish && !methods._execute.call(that, self.opt.finish, self.steps.length - 1)) {
            evt.preventDefault();
          } else if (isForm) {
            if (onSubmit) {
              that.attr('onsubmit', onSubmit);
            } else {
              that.removeAttr('onsubmit');
            }

            var isSubmit = self.finish.attr('type') === 'submit';

            if (!isSubmit && (!self.opt.validate || methods.validate.call(that, self.steps.length - 1))) {
              that.submit();
            }
          }
        });

        self.steps.last().children('.stepy-navigator').append(self.finish);
      } else {
        $.error('Submit button or element with class "stepy-finish" missing!');
      }
    }, _createBackButton: function(nav, index) {
      var self       = this,
          that       = $(this),
          attributes = { href: '#', 'class': 'button-back', html: self.opt.backLabel };

      $('<a />', attributes).on('click.stepy', function(e) {
        e.preventDefault();

        if (!self.opt.back || methods._execute.call(self, self.opt.back, index - 1)) {
          methods.step.call(self, (index - 1) + 1);
        }
      }).appendTo(nav);
    }, _createButtons: function(step, index) {
      var nav = methods._navigator.call(this).appendTo(step);

      if (index === 0) {
        if (this.steps.length > 1) {
          methods._createNextButton.call(this, nav, index);
        }
      } else {
        $(step).hide();

        methods._createBackButton.call(this, nav, index);

        if (index < this.steps.length - 1) {
          methods._createNextButton.call(this, nav, index);
        }
      }
    }, _createHead: function(step, index) {
      var step = $(step).attr('id', $(this).attr('id') + '-step-' + index).addClass('stepy-step'),
          head = methods._head.call(this, index);

      head.append(methods._title.call(this, step));

      if (this.opt.description) {
        head.append(methods._description.call(this, step));
      }

      this.header.append(head);
    }, _createNextButton: function(nav, index) {
      var self       = this,
          that       = $(this),
          attributes = { href: '#', 'class': 'button-next', html: self.opt.nextLabel };

      $('<a/>', attributes).on('click.stepy', function(e) {
        e.preventDefault();

        if (!self.opt.next || methods._execute.call(that, self.opt.next, index + 1)) {
          methods.step.call(self, (index + 1) + 1);
        }
      }).appendTo(nav);
    }, _description: function(step) {
      var legend = step.children('legend');

      if (!this.opt.legend) {
        legend.hide();
      }

      if (legend.length) {
        return $('<span />', { html: legend.html() });
      }

      methods._error.call(this, '<legend /> element missing!');
    }, _error: function(message) {
      $(this).html(message);

      $.error(message);
    }, _execute: function(callback, index) {
      var isValid = callback.call(this, index + 1);

      return isValid || isValid === undefined;
    }, _hash: function() {
      this.hash = 'stepy-' + Math.random().toString().substring(2)

      return this.hash;
    }, _head: function(index) {
      return $('<li />', { id: $(this).attr('id') + '-head-' + index });
    }, _header: function() {
      var header = $('<ul />', { id: $(this).attr('id') + '-header', 'class': 'stepy-header' });

      if (this.opt.titleTarget) {
        header.appendTo(this.opt.titleTarget);
      } else {
        header.insertBefore(this);
      }

      return header;
    }, _navigator: function(index) {
      return $('<p class="stepy-navigator" />');
    }, _title: function(step) {
      return $('<div />', { html: step.attr('title') || '--' });
    }, destroy: function() {
      return $(this).each(function() {
        var that = $(this);

        if (that.data('stepy')) {
          var steps = that.data('stepy', false).children('fieldset').css('display', '');

          that.children('.stepy-errors').remove();
          this.finish.appendTo(steps.last());
          steps.find('p.stepy-navigator').remove();
        }
      });
    }, step: function(index) {
      var self = this
          that = $(this),
          opt  = that[0].opt;

      index--;

      var steps = that.children('fieldset');

      if (index > steps.length - 1) {
        index = steps.length - 1;
      }

      var max = index;

      // Remove Validator...
      if (opt.validate) {
        var isValid = true;

        for (var i = 0; i < index; i++) {
          isValid &= methods.validate.call(this, i);

          if (opt.block && !isValid) {
            max = i;
            break;
          }
        }
      }

      // WIP...
        var stepsCount = steps.length;

        if (opt.transition == 'fade') {
          steps.fadeOut(opt.duration, function() {
            if (--stepsCount > 0) {
              return;
            }

            steps.eq(max).fadeIn(opt.duration);
          });
        } else if (opt.transition == 'slide') {
          steps.slideUp(opt.duration, function() {
            if (--stepsCount > 0) {
              return;
            }

            steps.eq(max).slideDown(opt.duration);
          });
        } else {
          steps.hide(opt.duration).eq(max).show(opt.duration);
        }

      that[0].heads.removeClass('stepy-active').eq(max).addClass('stepy-active');

      if (that.is('form')) {
        var $fields = undefined;

            if (max == index) {
              $fields = steps.eq(max).find(':input:enabled:visible');
            } else {
              $fields = steps.eq(max).find('.error').select().focus();
            }

            $fields.first().select().focus();
          }

          if (opt.select) {
        opt.select.call(this, max + 1);
      }

          return that;
    }, validate: function(index) { // WIP...
      var that = $(this);

      if (!that.is('form')) {
        return true;
      }

      var self = this,
        step    = that.children('fieldset').eq(index),
        isValid    = true,
        $title    = $('#' + that.attr('id') + '-header').children().eq(index),
        $validate  = that.validate();

      $(step.find(':input:enabled').get().reverse()).each(function() {
        var fieldIsValid = $validate.element($(this));

        if (fieldIsValid === undefined) {
          fieldIsValid = true;
        }

        isValid &= fieldIsValid;

        if (isValid) {
          if (self.opt.errorImage) {
            $title.removeClass('stepy-error');
          }
        } else {
          if (self.opt.errorImage) {
            $title.addClass('stepy-error');
          }

          $validate.focusInvalid();
        }
      });

      return isValid;
    }
  };

  $.fn.stepy = function(method) {
    if (methods[method]) {
      return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
    } else if (typeof method === 'object' || !method) {
      return methods.init.apply(this, arguments);
    } else {
      $.error('Method ' + method + ' does not exist!');
    }
  };

  $.fn.stepy.defaults = {
    back         : undefined,
    backLabel    : '&lt; Back',
    block        : false, // WIP...
    description  : true,
    duration     : undefined,
    enter        : true,
    errorImage   : false, // WIP...
    finish       : undefined,
    finishButton : true,
    ignore       : '', // WIP...
    legend       : true,
    next         : undefined,
    nextLabel    : 'Next &gt;',
    select       : undefined,
    titleClick   : false,
    titleTarget  : undefined,
    transition   : undefined,
    validate     : false // WIP...
  };

})(jQuery);
