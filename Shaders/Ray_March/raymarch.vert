#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 normal;

uniform vec2 screenSize;

out vec3 vPos;
out vec3 vNormal;
out vec3 eyeDir;
//out vec3 eyeRes;

void main(){
    
  vPos = vec3(aPos.x*screenSize.x, aPos.y*screenSize.y, aPos.z);
  eyeDir = vec3(0, 0, -1);
  //eyeRes = eye.xyz;
  gl_Position = vec4(vPos, 1.0);
}