import sys
import os

def snake_game():
    """
    A simple snake game in Python.
    """
    print("Welcome to the Snake Game!")
    print("Enter 'quit' to exit.")

    snake = [(0, 0)]
    food = (1, 1)
    direction = (0, 1)
    score = 0

    while True:
        print(f"Score: {score}")
        print(f"Snake: {snake}")
        print(f"Food: {food}")

        if food == (2, 2):
            print("You ate the food! Game Over!")
            break

        new_head = (0, 0)
        new_direction = (1, 0)

        snake.append(new_head)
        food = (2, 2)

        if food == (2, 2):
            print("You ate the food! Game Over!")
            break

        direction = new_direction

if __name__ == "__main__":
    snake_game()
