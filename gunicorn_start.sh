#!/bin/bash

# سكريبت تشغيل تطبيق إدارة الدخل الذكي باستخدام Gunicorn

# تفعيل البيئة الافتراضية
source venv/bin/activate

# تشغيل التطبيق باستخدام Gunicorn
exec gunicorn --workers=3 --bind=0.0.0.0:8000 "src.main:app"
