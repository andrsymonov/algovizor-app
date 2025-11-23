# Используем официальный образ Nginx для обслуживания статики
FROM nginx:alpine

# Удаляем стандартный index.html (чтобы не было конфликта)
RUN rm /usr/share/nginx/html/index.html

# Копируем ваш index.html и pricing_page.md в папку Nginx для статического контента
COPY index.html /usr/share/nginx/html/
COPY pricing_page.md /usr/share/nginx/html/

# Порт, который будет слушать Nginx (должен совпадать с настройками Railway)
EXPOSE 8080

# Запускаем Nginx и явно указываем ему слушать порт 8080
CMD ["nginx", "-g", "daemon off; listen 8080;"]