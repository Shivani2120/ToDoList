class TagesController < ApplicationController
    def index
        @tages = Tag.all
    end

    def edit
        @tag = Tag.find(params[:id])
    end

    def Show
        @tag = Tag.find(params[:id])
    end

    def new
        @tag = Tag.new
    end

    def create
        @tag = Tag.new(tages_params)
        if @tag.save
            redirect_to @tages
        else
            render :new
        end
    end

    def update
        @tag = Tag.find(params[:id])
        if @tag.update(tages_params)
            redirect_to @tages
        else
            render :edit
        end
    end

    private
    def tages_params
        params.require(:tages).permit(:content)
    end
end
