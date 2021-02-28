/// @description X Movement
//Thanks for the movement code, Scoot!

if (fxtimer < 10) {
    fxtimer += 1;
} else fxtimer = 0;
if (flashing > 0) flashing -= 1;

if(state == 0) { //Initial settings that we can't run in the create event because reasons
    image_alpha = 1;
    depth = lastDepth;
    sprite_index = lastSprite;
    image_index = lastFrame;
    image_angle = lastAngle;
    image_xscale = lastFacing;
    image_xscale = lastYscale;
    image_speed = 0;
    state = 1;
    statetime = 0;
    
    xoffset =  sprite_get_xoffset(lastSprite) - (mean(sprite_get_bbox_left(lastSprite), sprite_get_bbox_right(lastSprite)))
    lastXPos -= xoffset;
    yoffset = sprite_get_yoffset(lastSprite) - (mean(sprite_get_bbox_top(lastSprite), sprite_get_bbox_bottom(lastSprite)))
    lastYPos -= yoffset;
    
    if(frozenAngle != 0) 
        drawAngle = frozenAngle;
    else 
        drawAngle = lastAngle;
        
    if(sprite_index == sRamulken) sprite_index = sRamulkenNoShield;
    
    if (lastEnemy == oCavedropper ||
        lastEnemy == oBlobAir ||
        lastEnemy == oBlobWater ||
        lastEnemy == oGawron ||
        lastEnemy == oYumee||
        lastEnemy == oSkreek ||
        lastEnemy == oErisSegment ||
        lastEnemy == oErisBody2 ||
        lastEnemy == oMeboid || 
        lastEnemy == oMeboid2) reform = -1;
}
if(state == 1) { //Spawn transition state
    if(statetime == 0) PlaySoundMono(sndXMorph1);
    if(statetime <= 40) {
        sizeX = sizeX + 0.12;
        sizeY = sizeY + 0.08;
    }
    if(statetime >= 40) {
        sizeX = sizeX - 0.12;
        sizeY = sizeY - 0.08;
        if(statetime == 40) {
            collectable = 1;
            sprite_index = xtype;
            depth = -200;
            image_index = 0;
            image_speed = 0.2;
            image_angle = 0;
            image_xscale = 1;
            image_yscale = 1;
            if(xvariant == 1) {
                image_xscale = 0.8;
                image_yscale = 0.8;
            }
        }
        if(statetime >= 81) {
            state = 2;
            statetime = 0;
        }
    }
}
if(state == 2) //Normal Movement
{
    move = 1;
    if(statetime == 0) collectable = 1;
    if(counter > 0) { //Counter before movement
        move = 0;
        counter--;
    }
    else { //Randomize orbit point every 30 frames
        if(orbitCounter > 0) {
            orbitCounter--;
        }
        else {//Target either the Orbit Point or Sarah
            var angle = random(360);
            if(oCharacter.chargebeam == 0) { //Orbit Point  
                orbitX = xstart + lengthdir_x(32,angle);
                orbitY = ystart + lengthdir_y(32,angle);
            }
            else if(oCharacter.chargebeam >= 1) { //Sarah
                orbitX = oCharacter.x;
                orbitY = oCharacter.y - oCharacter.sprite_height/2;
            }
            orbitCounter = irandom_range(15,25); //Time before targeting again
        }
 
        //Maximum speed
        velX = clamp(velX,-4,4);
        velY = clamp(velY,-4,4);
    
    }
    xstart += originVelX;
    ystart += originVelY;
    if(reform >= 0.5 && statetime >= 155) {
        state = 4;
        statetime = 0;
        collectable = 0;
    }
    else if(statetime >= 620) {
        state = 3;
        statetime = 0;
    }
}
if(state == 3) { //Fly away
    move = 1;
    orbitX += xExit;
    orbitY += yExit;
    //Maximum speed
    velX = clamp(velX,-4,4);
    velY = clamp(velY,-4,4);
}
if(state == 4) { //Prepare for respawn
    flashing = 2;
    if(statetime == 0) {
        if(lastEnemy != oSkorp && lastEnemy != oGlowFly) lastAngle = 0;
        if(lastEnemy = oHalzyn) drawHalzynShields = true;
        drawAngle = lastAngle;
    }
    if(statetime < 120) {
        move = 1;
        orbitX = lastXPos;
        orbitY = lastYPos;
        //Maximum speed
        velX = clamp(velX,-3,3);
        velY = clamp(velY,-3,3);
    }
    if(statetime > 120 && point_distance(x,y,lastXPos,lastYPos) > 2) {
        move = 0;
        move_towards_point(lastXPos,lastYPos,2);
    }
    else if(point_distance(x,y,lastXPos,lastYPos) <= 2) {
        move = 0;
        x = lastXPos;
        y = lastYPos;
        speed = 0;
        state = 5;
        statetime = 0;
    }
}
if(state == 5) { //Respawn transition

    if(statetime == 0) PlaySoundMono(sndXMorph1);
    if(statetime <= 40) {
        sizeX = sizeX + 0.12;
        sizeY = sizeY + 0.08;
    }
    if(statetime >= 40) {
        sizeX = sizeX - 0.12;
        sizeY = sizeY - 0.08;
        if(statetime == 40) {
            image_speed = 0;
            sprite_index = lastSprite;
            image_xscale = lastFacing;
            image_index = 0
            depth = lastDepth;
            lastEnemyX = x + xoffset;
            lastEnemyY = y + yoffset;
        }
        if(statetime >= 81) {
            enemy = instance_create(lastXPos + xoffset, lastYPos + yoffset, lastEnemy);
            enemy.facing      = lastFacing;
            enemy.myhealth    = enemy.myhealth/2;
            enemy.timer       = lastEnemyTimer;
            enemy.rotspeed    = lastEnemyRotspeed;
            enemy.myspeed     = lastEnemyMyspeed;
            enemy.offset      = lastEnemyOffset;
            enemy.moveratio   = lastEnemyMoveratio;
            enemy.movesteps   = lastEnemyMovesteps;
            enemy.image_angle = lastAngle;
            if (lastEnemy == oHalzyn) {
                enemy.glow = lastEnemyGlow;
            }
            instance_destroy();
        }
    }
}

if(move == 1) { //Orbital movement
    var ang = point_direction(x,y,orbitX,orbitY);
    velX += lengthdir_x(0.2,ang);
    velY += lengthdir_y(0.2,ang);
    x += velX;
    y += velY;
}

statetime += 1;

