Deface::Override.new(virtual_path: 'spree/admin/cms_pages/_form',
name: 'admin cms page remove buttons before content field',
replace: "[data-hook='buttons']",
text: <<-HTML
        <div class="col"></div>
        HTML
)

Deface::Override.new(virtual_path: 'spree/admin/cms_pages/_form',
name: 'add_admin_cms_page_content_field',
insert_after: "[data-hook='admin_page_form_fields']",
original: '4ceca5d81b4f6a1c1b9e6a16b09d5861f0455793',
text: <<-HTML
            <% if @cms_page.type == 'Spree::Cms::Pages::ProductExtraInfoTab' %>
            <div class="row" data-hook="admin_cms_page_product_extra_info_tab">
                <div class="col-12">
                <%= f.field_container :content  do %>
                    <%= f.text_area :content, { rows: 22, class: 'spree-rte'} %>
                    <%= f.error_message_on :content %>
                <% end %>
                </div>
            </div>
            <div class="d-flex ">
                <%# render partial: 'spree/admin/shared/edit_resource_links' %>
            </div>
            <% end %>
        HTML
)