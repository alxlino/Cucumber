
class LoginPage <SitePrism::Page

    set_url '/login'

    element :email, '#email'
    element :senha, 'input[placeholder*=senha]'
    element :sign_in, '.login-button'
    element :alert, 'div[class$=alert-warning]'

    def with(email, pwd)
        self.email.set email
        self.senha.set pwd
        self.sign_in.click
    end


end

class NavPage <SitePrism::Page

    element :usermenu, '#navbar a[data-toggle=dropdown]'
    element :logout_link, '#navbar a[href$=logout]'

    def logout
        self.usermenu.click
        self.logout_link.click
    end    

end    

class  DashPage <SitePrism::Page
    element :title, '#page_title'
end


class CustomerPage <SitePrism::Page

    set_url '/customers'

    element :new_button, '#dataview-insert-button'
    element :name, 'input[name=name]'
    element :telefone, 'input[name=phone]'
    element :email, 'input[name=email]'
    element :type, 'select[id=type-customer]'
    element :note,  'textarea[name=note]'
    element :checkbox, 'input[type$=checkbox]' #'div[class$=checkbox]'
    element :save_button, '#form-submit-button'

    element :search_field, 'input[name=search]'
    element :search_button, 'button[id*=search]'

    elements :view, 'table tbody tr'

    def save(u)
        self.new_button.click
        self.name.set @user.nome
        self.telefone.set @user.telefone
        self.email.set @user.email
        self.note.set @user.obs
        self.checkbox.set(true)
        self.save_button.click
    end


    def search(target)
        self.search_field.set target
        self.search_button.click
    end

end

