class RolesController < ApplicationController
def all
  @users = User.all
end

end
