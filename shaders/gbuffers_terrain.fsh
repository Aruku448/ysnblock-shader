#version 120

uniform sampler2D texture;

varying vec2 texCoord;
varying vec4 vertexColor;

void main() {
    vec4 color = texture2D(texture, texCoord) * vertexColor;
    if (color.a < 0.1) discard;

    // A restrained warm grade that preserves the vanilla texture palette.
    vec3 graded = color.rgb * vec3(1.025, 1.010, 0.985);
    gl_FragData[0] = vec4(graded, color.a);
}
