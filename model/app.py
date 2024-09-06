import os
from flask import Flask, request, jsonify
from diffusers import CycleDiffusionPipeline

app = Flask(__name__)

# Load the pipeline
pipe = CycleDiffusionPipeline.from_pretrained(
    "./",  # Load from the root of the container where you copied the model files
    torch_dtype=torch.float16,  # Use float16 for faster inference (if your GPU supports it)
)

@app.route('/generate', methods=['POST'])
def generate_image():
    prompt = request.json['prompt']

    # Generate the image
    image = pipe(prompt, num_inference_steps=25).images[0]

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)
