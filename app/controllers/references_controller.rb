class ReferencesController < ApplicationController
 def new
  @reference = Reference.new
 end
 def create
   @reference = Reference.new reference_params
   @reference.save!
   redirect_to action: 'index'
 end
 def index
   @references = Reference.all
 end
 def generate
 end

 private

 def reference_params
   params.require(:reference).permit(:content)
 end
end
