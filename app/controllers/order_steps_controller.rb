class OrderStepsController < ApplicationController

  include Wicked::Wizard

  steps :brandings,:liveries,:seat_layouts,:life_jackets,:consoles,:bins,:lavatories,:open_exit_doors,:closed_exit_doors,:carpet_textures,:economy_seats,:business_seats,:first_class_seats,:safety_cards,:scene_1,:scene_2,:scene_3,:scene_4,:scene_5,:scene_6,:scene_7,:scene_8,:scene_9,:scene_10,:scene_11,:scene_12,:scene_13,:scene_14,:scene_15,:scene_16,:scene_17,:scene_18,:scene_19,:scene_20,:scene_21,:scene_22,:scene_23,:scene_24,:scene_25,:scene_26,:scene_27,:scene_28,:scene_29,:scene_30,:scene_31,:scene_32,:scene_33,:scene_34,:scene_35,:scene_36,:scene_37,:scene_38,:scene_39,:scene_40

  def show
    @order = Order.find(params[:order_id])
    (1..40).each do |i|
      if step == :"scene_#{i}"
        @scene = Scene.where('script_id = ? AND sequence_position = ?', 1, i).first
      end
    end
    @order.build_safety_card
    @comments = @order.comment_threads
                      .where('order_step = ?', "#{step.to_s}")
                      .order('created_at desc')
    @new_comment = Comment.build_from(@order, current_user.id, "", "#{step.to_s}")
    render_wizard
  end

  def update
    @order = Order.find(params[:order_id])
    @order.attributes = params[:order]
    render_wizard @order
  end
end
