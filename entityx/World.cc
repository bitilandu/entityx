/**
 * Copyright (C) 2012 Alec Thomas <alec@swapoff.org>
 * All rights reserved.
 *
 * This software is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.
 * 
 * Author: Alec Thomas <alec@swapoff.org>
 */

#include "World.h"

namespace entity {

void World::start() {
  configure();
  system_manager.configure();
  initialize();
}

void World::run() {
  running_ = true;
  double dt;
  while (running_) {
    dt = timer_.elapsed();
    timer_.restart();
    update(dt);
  }
}

void World::stop() {
  running_ = false;
}

}