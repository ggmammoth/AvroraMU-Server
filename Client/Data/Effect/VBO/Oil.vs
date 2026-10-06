#version 330 core
layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aNormal;
layout(location = 2) in vec2 aTex;
layout(location = 3) in uint aBone;

uniform mat4 uProj;
uniform mat4 uView;
uniform vec4 u_Bones[256];

uniform vec4 u_bodyLight;
uniform vec4 u_lightPosition;
uniform vec4 u_meshUV;
uniform vec4 u_setting1;
uniform vec4 u_setting2;
uniform int u_enableLight;
uniform int u_useTexture;
uniform float u_lightFloor;

out vec2 vTex;
out vec4 vColor;

vec3 ApplyBonePosition(vec3 pos, uint boneIndex)
{
    vec4 p = vec4(pos, 1.0);
    vec4 r0 = u_Bones[boneIndex + 0u];
    vec4 r1 = u_Bones[boneIndex + 1u];
    vec4 r2 = u_Bones[boneIndex + 2u];
    return vec3(dot(r0, p), dot(r1, p), dot(r2, p));
}

vec3 ApplyBoneNormal(vec3 normal, uint boneIndex)
{
    vec3 r0 = u_Bones[boneIndex + 0u].xyz;
    vec3 r1 = u_Bones[boneIndex + 1u].xyz;
    vec3 r2 = u_Bones[boneIndex + 2u].xyz;
    return normalize(vec3(dot(r0, normal), dot(r1, normal), dot(r2, normal)));
}

void main()
{
    uint boneIndex = aBone;
    vec3 worldPos = ApplyBonePosition(aPos, boneIndex);
    vec3 normal = ApplyBoneNormal(aNormal, boneIndex);

    vTex = (normal.xy * aTex) + u_meshUV.xy;

    vec4 color = u_bodyLight;
    float lightFlag = float(u_enableLight);
    float intensity = dot(normal, u_lightPosition.xyz) * 0.8 + 0.4;
    intensity = max(intensity, 0.2);
    color.rgb *= mix(1.0, intensity, lightFlag);
    // 01.10.2026: the light floor comes from the client - 0.45 for a normal textured mesh, 0 for an
    // additive (RENDER_BRIGHT) or untextured pass. The legacy renderer has no floor at all, and
    // flooring an additive shine/aura washed models white (Death Angel, White Wizard).
    float floorLight = u_lightFloor * lightFlag;
    color.rgb = clamp(color.rgb, vec3(floorLight), vec3(1.0));
    vColor = color;

    gl_Position = uProj * uView * vec4(worldPos, 1.0);
}
