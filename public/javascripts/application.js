var RGD = {
  config: {},
  
  init: function(settings) {
    $.extend(RGD.config, settings);
    RGD.setup();
  },

  setup: function() {
    setTimeout(RGD.asyncSetup, 200);
  },
  asyncSetup: function() {
  }

};
