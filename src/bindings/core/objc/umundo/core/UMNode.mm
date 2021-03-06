/**
 *  @file
 *  @author     2012 Stefan Radomski (stefan.radomski@cs.tu-darmstadt.de)
 *  @copyright  Simplified BSD
 *
 *  @cond
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the FreeBSD license as published by the FreeBSD
 *  project.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *  You should have received a copy of the FreeBSD license along with this
 *  program. If not, see <http://www.opensource.org/licenses/bsd-license>.
 *  @endcond
 */

#ifndef __has_extension
#define __has_extension __has_feature
#endif

#import "UMNode.h"

@implementation UMNode

- (id) init {
  self = [super init];
  if(self) {
		_cppNode = SharedPtr<umundo::Node>(new umundo::Node());
  }
  return self;
}

- (void)addPublisher:(UMPublisher*)pub {
  _cppNode->addPublisher(*(pub->_cppPub.get()));
}

- (void)addSubscriber:(UMSubscriber*)sub {
  _cppNode->addSubscriber(*(sub->_cppSub.get()));
}

- (void)removePublisher:(UMPublisher*)pub {
	_cppNode->removePublisher(*(pub->_cppPub.get()));
}

- (void)removeSubscriber:(UMSubscriber*)sub {
	_cppNode->removeSubscriber(*(sub->_cppSub.get()));
}

@end
