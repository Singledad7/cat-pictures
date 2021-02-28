/// @description Nohit if not ice/plasma
if(!other.ibeam && !other.pbeam) with(other)
    {
        event_user(1);
        instance_destroy();
    }
else event_inherited();

