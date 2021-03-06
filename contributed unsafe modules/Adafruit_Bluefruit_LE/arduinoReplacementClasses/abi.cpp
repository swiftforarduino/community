/*
  Copyright (c) 2014 Arduino.  All right reserved.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the GNU Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#include <stdlib.h>

// these errors are a noop, it seems less destructive than a hard to trace hang
extern "C" void __cxa_pure_virtual(void);
extern "C" void __cxa_deleted_virtual(void);

extern "C" int __cxa_guard_acquire(void);
extern "C" void __cxa_guard_release(void);

void __cxa_pure_virtual(void) {
  // We might want to write some diagnostics to uart in this case
  //std::terminate();
}

void __cxa_deleted_virtual(void) {
  // We might want to write some diagnostics to uart in this case
  //std::terminate();
}

//int __cxxabiv1::__cxa_guard_acquire(uint64_t* guard_object)
int __cxa_guard_acquire(void) {
  return 1;
}

void __cxa_guard_release(void) {

}
