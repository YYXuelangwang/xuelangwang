# xuelangwang
My First Repository
=======

## test transform in custom

##### code
you can set the view's transform with the method ```CGAffineTransformMake(a, b, c, d, tx, ty)``` ; 

##### iphone
you just need to set the a/b/c/d/tx/ty ,then you can test the result which you want;


## transform3D

```object-c
struct CATransform3D
{
CGFloat m11（x缩放）, m12（y切变）, m13（旋转）, m14（）;
CGFloat m21（x切变）, m22（y缩放）, m23（）, m24（）;
CGFloat m31（旋转）, m32（）, m33（）, m34（透视效果，要操作的这个对象要有旋转的角度，否则没有效果。正直/负值都有意义）;
CGFloat m41（x平移）, m42（y平移）, m43（z平移）, m44（）;
}; 

```
[more info about transform3d](http://blog.csdn.net/gyjjone/article/details/50317439)

```
[x y z 1][m11 m12 m13 m14
          m21 m22 m23 m24
          m31 m32 m33 m34
          m41 m42 m43 m44]-->[x' y' z' 1]

x'=(x*m11+y*m21+z*m31+m41)/(x*m14+y*m24+z*m34+m44)
y'=(x*m12+y*m22+z*m32+m42)/(x*m14+y*m24+z*m34+m44)
z'=(x*m13+y*m23+z*m33+m43)/(x*m14+y*m24+z*m34+m44)
```

![image](https://github.com/YYXuelangwang/xuelangwang/blob/master/transform.gif)

## test EmitterLayer in custom

EmitterLayer, render a particle system; with the most property, you can get differenct effects; Then, I've listed some properties for debugging purposes;

EmitterCell's properties

```object-c
emissionLongitude:  emission angle
emissionRange:      area around the emission angle, also angle
velocity:           emission velocity
velocityRange:      area around the emission velocity, float
spin:               rotation speed
```

EmitterLayer's properties

```object-c
emitterSize:        emission area, CGSize
emitterShape:       emitter shape, It's like literally; support: point, line, rectangle, cuboid, sphere, circle
emitterMode:        patterns of emitting particles, support: points, outline, surface, volume
```

![image](https://github.com/YYXuelangwang/xuelangwang/blob/master/emitterLayer.gif)


