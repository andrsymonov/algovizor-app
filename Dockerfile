# Используем официальный образ Nginx для обслуживания статики
FROM nginx:alpine

# Удаляем стандартный index.html (чтобы не было конфликта)
RUN rm /usr/share/nginx/html/index.html

# Копируем ваш index.html и pricing_page.md в папку Nginx для статического контента
COPY index.html /usr/share/nginx/html/
COPY pricing_page.md /usr/share/nginx/html/

# Порт Nginx по умолчанию (80)
EXPOSE 80

# Запускаем Nginx с чистой командой (без 'listen')
CMD ["nginx", "-g", "daemon off;"]