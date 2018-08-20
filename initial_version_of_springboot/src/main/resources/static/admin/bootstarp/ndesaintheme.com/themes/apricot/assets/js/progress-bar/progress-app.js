$(function() {
    function randomPercentage() {
      return Math.floor(Math.random() * 100);
    }

    function randomInterval() {
      var min = Math.floor(Math.random() * 30);
      var max = min + (Math.floor(Math.random() * 40) + 70);
      return [min, max];
    }

    function randomStep () {
      return Math.floor(Math.random() * 10) + 5;
    }

    // setup
    var $basic = $('#basic');
    var interval = randomInterval();
    var basicBar = $basic.find('.number-pb').NumberProgressBar({
      style: 'basic',
      min: interval[0],
      max: interval[1]
    })
    $basic.find('.title span').text('[Min: ' + interval[0] + ', Max: ' + interval[1] + ']');

    var percentageBar = $('#percentage .number-pb').NumberProgressBar({
      style: 'percentage'
    })

    var $step = $('#step');
    var maxStep = randomStep()
    var stepBar = $('#step .number-pb').NumberProgressBar({
      style: 'step',
      max: maxStep
    })
    $step.find('.title span').text('[Max step: ' + maxStep + ']');

    // loop
    var basicLoop = function() {
      basicBar.reach(undefined, {
        complete: percentageLoop
      });
    }

    var percentageLoop = function() {
      percentageBar.reach(undefined, {
        complete: stepLoop
      });
    }

    var stepLoop = function() {
      stepBar.reach(undefined, {
        complete: basicLoop
      });
    }

    // start
    basicLoop();
  });