class UserStepsController < ApplicationController

  include Wicked::Wizard
  steps :scene_1,:scene_2,:scene_3,:scene_4,:scene_5,:scene_6,:scene_7,:scene_8,:scene_9,:scene_10,:scene_11,:scene_12,:scene_13,:scene_14,:scene_15,:scene_16,:scene_17,:scene_18,:scene_19,:scene_20,:scene_21,:scene_22,:scene_23,:scene_24,:scene_25,:scene_26,:scene_27,:scene_28,:scene_29,:scene_30,:scene_31,:scene_32,:scene_33,:scene_34,:scene_35,:scene_36,:scene_37,:scene_38,:scene_39,:scene_40

  def show
    render_wizard
  end

end
