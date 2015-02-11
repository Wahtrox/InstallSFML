//
// main.cpp for Install in /home/malik_r/SFML/Install
// 
// Made by Romain Malik
// Login   <malik_r@epitech.net>
// 
// Started on  Wed Feb 11 17:23:12 2015 Romain Malik
// Last update Wed Feb 11 17:23:12 2015 Romain Malik
//

#include "SFML/Graphics.hpp"

int		main(void)
{
  sf::RenderWindow window(sf::VideoMode(200, 200), "SFML works!");
  sf::CircleShape shape(100.f);
  shape.setFillColor(sf::Color::Green);

  while (window.isOpen())
    {
      sf::Event event;
      while (window.pollEvent(event))
        {
	  if (event.type == sf::Event::Closed)
	    window.close();
        }

      window.clear();
      window.draw(shape);
      window.display();
    }

  return (0);
}
