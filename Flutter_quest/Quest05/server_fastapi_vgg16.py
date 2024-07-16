import uvicorn   # pip install uvicorn 
from fastapi import FastAPI, HTTPException   # pip install fastapi 
from fastapi.middleware.cors import CORSMiddleware
import vgg16_prediction_model
import logging

# Create the FastAPI application
app = FastAPI()

# CORS configuration
origins = ["*"]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Set up logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Load the model once
try:
    vgg16_model = vgg16_prediction_model.load_model()
except Exception as e:
    logger.error("Failed to load model: %s", e)
    raise

# A simple example of a GET request
@app.get("/")
async def read_root():
    logger.info("Root URL was requested")
    return "VGG16모델을 사용하는 API를 만들업 봅시다."

@app.get('/sample')
async def sample_prediction():
    try:
        result = await vgg16_prediction_model.prediction_model(vgg16_model)
        logger.info("Prediction was requested and done")
        return result
    except Exception as e:
        logger.error("Prediction failed: %s", e)
        raise HTTPException(status_code=500, detail="Internal Server Error")

# Run the server
if __name__ == "__main__":
    uvicorn.run("server_fastapi_vgg16:app",
            reload= True,   # Reload the server when code changes
            host="127.0.0.1",   # Listen on localhost 
            port=5000,   # Listen on port 5000 
            log_level="info"   # Log level
            )
    

 # - 회고 이한나
# - 목표 및 기대
# 목표: FastAPI 백엔드와 Flutter 프론트엔드를 통합하여 완성된 젤리피쉬 결과 앱을 만드는 것.
# 기대: 사용자 친화적인 인터페이스와 안정적인 백엔드 기능을 제공하여 젤리피쉬 데이터의 예측값의 정확성을 극대화하는 것.
# - 어려움및 극복 방법 
# 원래는 새로운 포더를 생성하여 만들고자 하였으나, 어제 한 실습 폴더에 엎어서 다시 하였는데도 아래의 문제가 발생했습니다.
# TensorFlow 모델 로딩 문제: 모델 파일을 찾지 못하는 문제를 해결하기 위해 파일 경로를 다시 설정하고,
# 경로 관련 문제를 정확히 파악함.
# ngrok 설정 문제: ngrok 세션 제한 문제를 해결하기 위해 ngrok 대시보드에서 기존 세션을 종료하고 설정 파일을 
# 사용하여 여러 터널을 관리함.
# 라이브러리 호환성 문제: PIL.Image의 ANTIALIAS 속성 문제를 해결하기 위해 대체 속성인 LANCZOS를 사용함.
# 완성된 앱은 못 만들었지만, 어제 배운 내용을 복기할 수 있는 기회였습니다.
# jellyfish 예측 값 받은 url: https://6bfc-121-134-108-23.ngrok-free.app/sample
