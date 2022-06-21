## Godot default addons

Default set of addons that can be added to newly created project (feature can be found on my fork of __Godot__).

Because these addons are copied with empty/clean project, there are no ```.import``` files created for resources. We need to import them manually using function ```Editor.import()```.


 * **arrow_shape**:
   cleanup file naming
 * **arrow_shape**:
   fixed and modifed for Godot3; Editor.import() added.
 * **debug_overlay**
   improvments and cleanup
 * **metadata_inspector**
 * **plugin_refresher**
 * **polygon_builder**
 * **perf_monitor**
 * **sprite_quick_offset**
 * **vector_icons**

### Removed or replaced by native implementations:

 * **add_primitives**:
   fixed and updated for Godot3 _(editor integration)_
 * **godobuf**:
   fixed and modifed for Godot3
 * **platform2d**
 * **rmsmartshape2d**
 * **scene_scatter**
   paint with whole scenes; Editor.import() added.
 * **scrolling_background**
