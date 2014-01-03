class DeployController < ApplicationController
  def github
    workspace = Rails.root
    payload = JSON.parse(params[:payload]) rescue nil
    status 403 && return if payload.blank?

    app = payload['repository']['name']
    `cd #{workspace} && git pull origin master`
    `cd #{workspace} && bundle install`
    `cd #{workspace} && bundle exec rake db:migrate`
    render nothing: true
  end
end
