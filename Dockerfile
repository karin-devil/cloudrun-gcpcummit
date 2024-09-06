FROM python:3.9

RUN pip install diffusers
RUN pip install torch
RUN pip install Pillow

COPY stable_diffusion_v1_4/config.json /config.json
COPY stable_diffusion_v1_4/scheduler.json /scheduler.json
COPY stable_diffusion_v1_4/model.ckpt /model.ckpt
COPY app.py /app.py

CMD ["python", "/app.py"]
