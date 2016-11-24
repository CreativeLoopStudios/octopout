// Particle
global.BubbleParticle = part_type_create();
var particle = global.BubbleParticle;
part_type_sprite(particle, sBubble, 1, 1, 0);
// size of the particle
part_type_size(particle, 0.2, 0.5, -0.005, 0);
part_type_scale(particle, 1, 1);
// speed of the particle
part_type_speed(particle, 0.2, 0.3, 0, 0);
part_type_direction(particle, 70, 110, 0, 0);
part_type_gravity(particle, 0.02, 90);
part_type_orientation(particle, 0, 359, 0, 0, true);
// time of life
part_type_life(particle, room_speed * 1, room_speed * 3);
part_type_blend(particle, 1);
