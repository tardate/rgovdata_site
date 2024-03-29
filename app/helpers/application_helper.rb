module ApplicationHelper

  # Inserts Google Analytics script
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

  def insert_forkme(github_url)
    return unless github_url.present?
    return raw <<-EOS
<a href="#{github_url}"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png" alt="Fork me on GitHub"></a>
    EOS
  end

  # Returns main menu item collection
  def menu_options
    [
      {:title => t('dashboards.show.title'), :url => root_url, :selected_matcher => 'dashboards'},
      {:title => t('guides.index.title'), :url => guides_url, :selected_matcher => 'guides'},
      {:title => t('docs.index.title'), :url => docs_url, :selected_matcher => 'docs'},
      {:title => t('realms.index.short_title'), :url => realms_url, :selected_matcher => 'realms|services'}
    ]
  end

  def insert_record_limit_note
    limit = AppConstants.live_explorer_record_limit
    return unless limit.present?
    content_tag(:div, t('limited_records', :limit => limit), :class => "note")
  end
end
