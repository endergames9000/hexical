#version 150

in vec3 Position;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec3 fragPos;
out vec2 fragUV;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    fragPos = Position;
    fragUV = Position.xz;
}