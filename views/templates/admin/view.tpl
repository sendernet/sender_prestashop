<script>
    var formsAjaxurl = '{$formsAjaxurl}';
    var listsAjaxurl = '{$listsAjaxurl}';
</script>
<div class="pure-g sender-prestashop-card">
    <div class="pure-u-1-1 sender-prestashop-header">
        <div class="pure-g">
            <div class="pure-u-1-1 pure-u-sm-1-2 sw-text-left">
                <img src="{$imageUrl}" alt="Sender Logo">
                <span>
                    <small style="vertical-align: bottom;">v{$moduleVersion}</small>
                </span>
            </div>
        </div>
    </div>
    
    <div class="pure-u-1-1 pure-u-lg-3-24 sender-prestashop-hide-small sender-prestashop-menu">
        <ul class="sw-tabs sw-main-menu">
            <li class="tab-link" data-tab="sw-push" disabled>
                <a href="#!sw-push"><i class="zmdi zmdi-notifications-active"></i> Push notifications</a>
            </li>
            <li data-tab="forms" class="tab-link">
                <a href="#!forms"><i class="zmdi zmdi-format-list-bulleted"></i> Forms</a>
            </li>

            <li data-tab="settings" id="workflows" class="tab-link">
                <a href="#!settings"><i class="zmdi zmdi-settings"></i> Settings</a>
            </li>
            
        </ul>
    </div>
    <div class="pure-u-1-1 pure-u-lg-18-24 sender-prestashop-content">
        <div id="forms" class="sw-tab-content <?php echo !get_option('sender_woocommerce_has_woocommerce') ? 'sw-current' : '';?>">
            <div class="pure-g">
                <div class="pure-u-1-1">
                    <h3><i class="zmdi zmdi-format-list-bulleted"></i> Widget is {if not $allowForms}<span id="swToggleWidgetTitle" style="color:red;">disabled</span>{else}<span id="swToggleWidgetTitle" style="color:green;">enabled</span>{/if} </h3>  
                </div>
                <div class="pure-u-1-1 pure-u-sm-3-24 sw-details-settings">
                    <button id="swToggleWidget" style="width: 90%; background-color:{if not $allowForms}green{else}red{/if}" class="sender-prestashop-button">{if not $allowForms}Enable{else}Disable{/if}</button>
                </div>
                <div class="pure-u-1-1 pure-u-sm-12-24">
                    <p>
                        When enabled, a Sender.net form widget will appear in the customization menu. It allows you to insert your Sender.net form into anywhere on your web page.
                    </p>
                    <p>
                        <a href="#">Manage widgets</a>
                    </p>
                </div>
                <div class="pure-u-1-1 {if not $allowForms}hidden{/if}" id="forms_tab">
                    <select id="swFormsSelect" value="{$formId}">
                    {foreach $formsList as $form}
                        <option {if $form->id eq $formId}selected="selected"{/if} value="{$form->id}">{$form->title}</option>
                    {/foreach}
                    </select>
                </div>
            </div>
        </div>
        <div id="sw-push" class="sw-tab-content">
            No no, push is no here
        </div>
        <div id="settings" class="sw-tab-content">
            <div class="col-xs-12">
                <h4>
                Connected successfully
                </h4>
                <p>
                Your api key is: {$apiKey}
                </p>
            </div>
            <div class="col-xs-12">
                <a href="{$disconnectUrl}" class="btn" style="background-color: tomato; color: #fff;">{l s='Disconnect'}</a>
            </div>
            <div class="col-xs-12" style="margin-top: 25px;">
                <div class="pure-g">
                    <div class="pure-u-1-1">
                        <h3><i class="zmdi zmdi-shopping-cart"></i> Guest cart tracking is {if not $allowGuestCartTracking}<span id="swToggleGuestCartTrackingTitle" style="color:red;">disabled</span>{else}<span id="swToggleGuestCartTrackingTitle" style="color:green;">enabled</span>{/if} </h3>  
                    </div>
                    <div class="pure-u-1-1 pure-u-sm-3-24 sw-details-settings">
                        <button id="swToggleGuestCartTracking" style="width: 90%; background-color:{if not $allowGuestCartTracking}green{else}red{/if}" class="sender-prestashop-button">{if not $allowGuestCartTracking}Enable{else}Disable{/if}</button>
                    </div>
                    <div class="pure-u-1-1 pure-u-sm-12-24">
                        <p>
                            When enabled, a Sender.net form widget will appear in the customization menu. It allows you to insert your Sender.net form into anywhere on your web page.
                        </p>
                        <p>
                            <a href="#">Manage widgets</a>
                        </p>
                    </div>
                    <div class="pure-u-1-1 {if not $allowGuestCartTracking}hidden{/if}" id="guests_lists">
                        <select id="swGuestListSelect" value="{$formId}">
                        {foreach $guestsLists as $guestsList}
                            <option {if $guestsList->id eq $guestListId}selected="selected"{/if} value="{$guestsList->id}">{$guestsList->title}</option>
                        {/foreach}
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-xs-12" style="margin-top: 25px;">
                <div class="pure-g">
                    <div class="pure-u-1-1">
                        <h3><i class="zmdi zmdi-shopping-cart"></i> Customers list selection</h3>  
                    </div>
                    <div class="pure-u-1-1" id="customers_lists">
                        <select id="swCustomerListSelect" value="{$formId}">
                        {foreach $customersLists as $customerList}
                            <option {if $customerList->id eq $customerListId}selected="selected"{/if} value="{$customerList->id}">{$customerList->title}</option>
                        {/foreach}
                        </select>
                    </div>
                </div>
            </div>
        </div>
      
    </div>
</div>
