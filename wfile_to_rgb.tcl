set colscalebarflag 1
set file '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/ac1/BaleenMM/stats_outliers/swra_slice/RelatedLP-lh.w'
#foreach file {} {
set val $file
#sclv_read_binary_values 0 ##sclv_read_binary_values <field> Where <filename> is the .w file name and <field> is 0-9, signifying which overlay layer you want to load this into.
sclv_read_from_dotw 0
redraw
set outpth "/cluster/kuperberg/SemPrMM/MRI/functionals/ac1/BaleenMM/stats_outliers/swra_slice"
set conname "RelatedLP"

rotate_brain_y 90
sclv_set_current_field 0
UpdateAndRedraw
puts "Taking Snapshots..."
make_lateral_view
redraw
set rgb "RelatedLP-Lat.rgb"
save_rgb

rotate_brain_x 90
redraw
set rgb "RelatedLP-Ven.rgb"
save_rgb

make_lateral_view
rotate_brain_y 180
redraw
set rgb "RelatedLP-Med.rgb"
save_rgb


#}
