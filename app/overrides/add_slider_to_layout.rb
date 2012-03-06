Deface::Override.new(:virtual_path => 'layouts/spree_application',
                     :name => 'add_slider',
                     :insert_after => %q{#header[data-hook]},
                     :text => %q{
                     				<div id='spree-slider' data-hook>
                                  		<%= yield :spree_slider %>
                                	</div>
                                })
