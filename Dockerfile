# Используем официальный образ Nginx для обслуживания статики
FROM nginx:alpine

# Удаляем стандартный конфиг Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копируем наш кастомный конфиг (nginx.conf)
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем ваш index.html и pricing_page.md в папку Nginx для статического контента
COPY index.html /usr/share/nginx/html/
COPY pricing_page.md /usr/share/nginx/html/

# Порт, который будет слушать Nginx
EXPOSE 8080

# Запускаем Nginx (используя наш новый конфиг)
CMD ["nginx", "-g", "daemon off;"]