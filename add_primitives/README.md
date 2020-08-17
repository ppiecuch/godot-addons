#Add Primitives
A plugin for the Godot Game Engine, capable of generating simple meshes for your game

***

###Features
**Primitives**:
  * Box
  * Capsule
  * Circle
  * Cone
  * Cylinder
  * Plane
  * Solid
  * Sphere
  * Torus
  * Tube
  * Wedge
  * Stair(Linear, Curved, Spiral)
  * Arch
  * C Box
  * Disc
  * Ellipse
  * Ellipsoid
  * L Box
  * Pyramid
  * Torus Knot

**Modifier System**:
  * Twist
  * Shear
  * Taper
  * Array
  * Offset
  * Random
  * UV Transform

***

###Install

#####Using Git
Run the following command, remember to change the PLUGINS_FOLDER to Godot `addons` folder on your project:
```
git clone https://github.com/TheHX/add_primitives.git PLUGINS_FOLDER
```
#####Manual
Download the repository ZIP, unpack in the Godot `addons` on your project and rename the `add_primitives-master` folder to ```add_primitives```.

***

###Usage
Open Godot, and in editor go to `Scene->Project Settings`, and select "Plugins" tab, and enable the plugin. 

If you don't see the plugin, click on the `Update` button. If it don't appear, check if the plugin is in the 
right folder. Else you can open a issue to see what's is wrong.

After enabling the plugin:

1. Select any primitive from the plugin menu on 3D editor toolbar, it'll be added to the selected node or become the scene root if the scene is empty.
2. A window will appear, where you can edit the primitive parameters.
3. You can reopen this window by selecting "Edit Primitive" in the plugin menu, or by pressing ```Ctrl+E```.

***

###License
This plugin is licensed under the [MIT license](https://github.com/TheHX/add_primitives/blob/master/LICENSE.md).
