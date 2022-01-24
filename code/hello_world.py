import os

HELLO_WORLD = os.environ.get("HELLO_WORLD", default="world")


def hello(world: str = HELLO_WORLD) -> str:
    return f"Hello, {world}!"


print(hello())
