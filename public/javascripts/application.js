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
    RGD.asyncPageLoad();
  },

  asyncPageLoad: function() {
    $('.pageload').each( function() {
      var target = $(this);
      var url = target.data('url') || target.attr('href');
      if (url != "") {
        RGD.load_page(url,target);
      }
      return false;
    });
  },

  load_page: function(url,target) {
    $.get(url, {}, function(data) {
      target.html(data);
    });
  }

};
