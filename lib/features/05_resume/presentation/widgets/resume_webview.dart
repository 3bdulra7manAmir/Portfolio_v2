import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/functions/url_launcher/urls.dart';

class ResumeWebView extends StatefulWidget {
  const ResumeWebView({super.key});

  @override
  State<ResumeWebView> createState() => _ResumeWebViewState();
}

class _ResumeWebViewState extends State<ResumeWebView> {
  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      // إنشاء iframe مباشرة في الـ DOM
      _createIframeInDom();
    }
  }

  void _createIframeInDom() {
    // البحث عن العنصر الذي سيحتوي على الـ iframe
    final container = html.document.getElementById('resume-container');
    if (container != null) {
      container.remove();
    }

    // إنشاء container جديد
    final newContainer = html.DivElement()
      ..id = 'resume-container'
      ..style.width = '100%'
      ..style.height = '100%'
      ..style.borderRadius = '12px'
      ..style.overflow = 'hidden';

    // إنشاء الـ iframe
    final iframe = html.IFrameElement()
      ..src = Urls.resumeFlow
      ..style.width = '100%'
      ..style.height = '100%'
      ..style.border = 'none'
      ..allowFullscreen = true;

    newContainer.append(iframe);
    
    // إضافة الـ container للصفحة
    html.document.body?.append(newContainer);
  }

  void _openInNewTab() {
    if (kIsWeb) {
      html.window.open(Urls.resumeFlow, '_blank');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // المحتوى الرئيسي
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // أيقونة Resume
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.description,
                      size: 80,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // العنوان
                  Text(
                    'My Professional Resume',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // الوصف
                  Text(
                    'View my comprehensive resume with detailed information about my skills, experience, and qualifications',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // الأزرار
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // زر العرض الأساسي
                      ElevatedButton.icon(
                        onPressed: _openInNewTab,
                        icon: const Icon(Icons.visibility, size: 24),
                        label: const Text('View Resume'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      
                      const SizedBox(width: 16),
                      
                      // زر فتح في تاب جديد
                      OutlinedButton.icon(
                        onPressed: _openInNewTab,
                        icon: const Icon(Icons.open_in_new, size: 20),
                        label: const Text('New Tab'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Theme.of(context).primaryColor,
                          side: BorderSide(color: Theme.of(context).primaryColor),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // معلومات إضافية
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue[200]!),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.blue[600],
                          size: 24,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FlowCV Resume',
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Professional resume created with FlowCV platform',
                                style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // زر سريع في الزاوية
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: _openInNewTab,
                icon: const Icon(Icons.launch),
                tooltip: 'Quick view',
                iconSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // تنظيف الـ iframe من الـ DOM
    if (kIsWeb) {
      final container = html.document.getElementById('resume-container');
      container?.remove();
    }
    super.dispose();
  }
}