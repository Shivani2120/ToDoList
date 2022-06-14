class AddTagesController < ApplicationController
    def create
        @tag.user = current_user
        @tag = Tag.find(params[:tag_id])
        @add_tage = @tag.add_tages.build(add_tage_params)
        if @add_tage.save
            redirect_to tages_url
        end
    end

    def destroy
       @tag = Tag.find(params[:tag_id])
       @add_tage = @tag.add_tage.find(params[:id]).destroy

       redirect_to tages_url
    end

    def add_tage_params
        params.require(:add_tage).permit(:content)
    end
    
 end
