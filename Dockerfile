FROM python:3.9

RUN pip install diffusers
RUN pip install torch
RUN pip install PIL

COPY stable_diffusion_v1_4/config.json /config.json
COPY stable_diffusion_v1_4/scheduler.json /scheduler.json
COPY stable_diffusion_v1_4/model.ckpt /model.ckpt

CMD ["python", "-m", "diffusers.pipelines.stable_diffusion.CycleDiffusionPipeline", "--config", "/config.json", "--scheduler", "/scheduler.json", "--model", "/model.ckpt"]
