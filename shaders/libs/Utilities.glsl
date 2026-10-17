#if !defined YSN_UTILITIES_GLSL
#define YSN_UTILITIES_GLSL

vec3 ysnApplyColorGrade(vec3 color) {
    float strength = YSN_COLOR_GRADE;
    vec3 warmColor = color * vec3(1.0 + strength, 1.0, 1.0 - strength * 0.5);
    return clamp(warmColor, 0.0, 1.0);
}

#endif
