from _entityx import _Entity


__all__ = ['Entity', 'Component']


class Entity(_Entity):
    """Base Entity class.

    Python Enitities differ in semantics from C++ components, in that they
    contain logic.
    """

    def __init__(self, entity):
        super(Entity, self).__init__(entity)
        self._components = {}

    def update(self, dt):
        """Update method called each game tick."""


class Component(object):
    """A descriptor that manages Component creation.

    Use like so:

    class Player(Entity):
        position = Component(Position)

        def move_to(self, x, y):
            self.position.x = x
            self.position.y = y
    """
    def __init__(self, cls):
        self._cls = cls
        self._component = None

    def __get__(self, obj, type=None):
        component = obj._components.get(self._cls)
        if component is None:
            component = self._cls.get_component(obj._entity)
            if not component:
                component = self._cls()
                component.assign_to(obj._entity)
            obj._components[self._cls] = component
        return component
