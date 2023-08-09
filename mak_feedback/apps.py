from django.apps import AppConfig
from django.conf import settings
import os
import pickle



class MakFeedbackConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'mak_feedback'
    
    path = os.path.join(settings.MODELS,'models.p')
    with open(path,'rb')as pickled:
        data = pickle.load(pickled)
        model = data['model']
        vectorizer = data ['vectorizer']

    
    
   
    
    
    
    
    
    
    
        
        
    
    
