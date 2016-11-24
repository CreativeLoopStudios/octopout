// Particle
global.BrickDustParticule = part_type_create();
var particle_dust = global.BrickDustParticule;
part_type_sprite(particle_dust, sDust, 1, 1, 0);
// size of the particle
part_type_size(particle_dust, 0.8, 1, 0, 0);
part_type_scale(particle_dust, 1, 1);
// speed of the particle
part_type_speed(particle_dust, 1, 1.5, 1, 0);
part_type_direction(particle_dust, 0, 360, 0, 0);
part_type_gravity(particle_dust, 0.02, random_range(0, 360));
part_type_orientation(particle_dust, 0, 359, 0, 0, true);
// time of life
part_type_life(particle_dust, room_speed * 0.1, room_speed * 0.2);
part_type_blend(particle_dust, 1);
