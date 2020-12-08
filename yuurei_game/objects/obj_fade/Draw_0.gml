depth = -9999

draw_set_alpha(alpha)
draw_set_color(c_black)

draw_rectangle(
	view_xport[0],
	view_yport[0],
	view_xport[0] + view_wport[0],
	view_yport[0] + view_hport[0],
	false
)

draw_set_alpha(1)