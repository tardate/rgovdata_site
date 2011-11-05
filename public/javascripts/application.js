var RGD = {
  config: {
    inline_loading_text: 'Loading..'
  },
  
  init: function(settings) {
    $.extend(RGD.config, settings);
    RGD.setup();
  },

  setup: function() {
    RGD.enableControls();
    setTimeout(RGD.asyncSetup, 200);
  },
  asyncSetup: function() {
    RGD.asyncPageLoad();
  },

  enableControls: function() {
    $('.inline-pageload').bind('click', function() {
      var target = $(this);
      var url = target.data('url') || target.attr('href');
      if (url != "") {
        target.html('<div class="loading inline">' + RGD.config.inline_loading_text + '<div>');
        RGD.load_page(url,target);
      }
      return false;
    });
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
