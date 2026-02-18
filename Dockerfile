FROM ollama/ollama:latest

# expose port
EXPOSE 11434

# preload model (optional but recommended)
RUN ollama pull llama3

CMD ["ollama", "serve"]
