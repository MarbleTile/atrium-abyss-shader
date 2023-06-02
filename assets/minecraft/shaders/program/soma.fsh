#version 150

uniform sampler2D DiffuseSampler;

uniform vec4 ColorModulate;

in vec2 texCoord;

out vec4 fragColor;

void main(){
    vec2 off_r = vec2(-0.01, 0.01);
    vec2 off_g = vec2(0.0, 0.0);
    vec2 off_b = vec2(0.01, -0.01);
    vec4 r = texture(DiffuseSampler, texCoord + off_r) * ColorModulate; 
    vec4 g = texture(DiffuseSampler, texCoord + off_g) * ColorModulate; 
    vec4 b = texture(DiffuseSampler, texCoord + off_b) * ColorModulate; 
    vec4 a = texture(DiffuseSampler, texCoord) * ColorModulate; 
    fragColor = vec4(r.r, g.g, b.b, a.a);
}
