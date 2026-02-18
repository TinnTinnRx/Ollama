FROM ollama/ollama:latest

# ตั้งค่าให้ Ollama รับการเชื่อมต่อจากภายนอก
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_ORIGINS=*

# สั่งให้รัน Ollama server และโหลดโมเดลรอไว้ (เลือกโมเดลขนาดเล็กเพื่อให้รันบน Render ไหว)
RUN ollama serve & sleep 5 && ollama pull phi3

EXPOSE 11434

ENTRYPOINT ["ollama", "serve"]
