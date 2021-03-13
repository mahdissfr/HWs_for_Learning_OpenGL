#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;
  
uniform mat4 transform;
uniform float rotate;

void main()
{
    
    gl_Position = transform * vec4(aPos, 1.0f);
    if(rotate == 1.0)
        ourColor = vec3(transform * vec4(aColor, 0.0f));
    else
        ourColor = aColor;

    TexCoord = vec2(aTexCoord.x, aTexCoord.y);
} 