
Before do
    @login = LoginPage.new
    @nav = NavPage.new
    @dash = DashPage.new
    @customer = CustomerPage.new
end

After('@logout') do
    @nav.logout
    @login.load
    #nav.usermenu.click
    #nav.logout_link.click    
    #within('#navbar') do
        #find('a[data-toggle=dropdown]').click
        #find('#navbar a[href$=logout]').click
    #end
end