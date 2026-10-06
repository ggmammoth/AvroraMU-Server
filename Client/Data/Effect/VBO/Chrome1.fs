#version 330 core
in vec2 vTex;
in vec4 vColor;

out vec4 FragColor;

uniform sampler2D uTexture;
uniform int u_useTexture;

void main()
{
    vec4 texColor = u_useTexture != 0 ? texture(uTexture, vTex) : vec4(1.0);
    FragColor = texColor * vColor;
}