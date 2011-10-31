module ApplicationHelper
  def insert_ga_script(ga_id)
    return unless ga_id.present?
    return raw <<-EOGA
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', '#{ga_id}']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
    EOGA
  end
end
