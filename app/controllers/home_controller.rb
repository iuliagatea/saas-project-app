class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
    if current_user
      if session[:tenant_id]
        Tenant.set_currenct_tenant session[:tenant_id]
      else
        Tenane.set_currenct_tenant current_user.tenants.first
      end
      
      @tenant = Tenant.current_tenant
      params[:tenant_id] = @tenant.id
    end
  end
end
