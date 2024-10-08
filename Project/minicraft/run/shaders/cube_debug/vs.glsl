#version 400

uniform mat4 mvp;

layout(location=0) in vec3 vs_position_in;
layout(location=1) in vec3 vs_normal_in;
layout(location=2) in vec2 vs_uv_in;

out vec4 color_out_vs;

void main()
{
	vec4 vecIn = vec4(vs_position_in,1.0);
	gl_Position = mvp * vecIn;
	color_out_vs = vec4(vs_position_in,1);
	color_out_vs = vec4(abs(vs_normal_in),1);

}