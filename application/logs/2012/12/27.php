<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2012-12-27 10:37:44 --- EMERGENCY: View_Exception [ 0 ]: The requested view template could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php:137
2012-12-27 10:37:44 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(137): Kohana_View->set_filename('template')
#1 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/View.php(12): Kohana_View->__construct('template', NULL)
#2 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(33): View::factory('template')
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(69): Kohana_Controller_Template->before()
#4 [internal function]: Kohana_Controller->execute()
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#7 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#8 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#9 {main} in /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php:137
2012-12-27 16:43:31 --- EMERGENCY: ErrorException [ 1 ]: Class 'Tenchi\Model\User' not found ~ MODPATH/site/classes/Controller/Site.php [ 173 ] in :
2012-12-27 16:43:31 --- DEBUG: #0 [internal function]: Kohana_Core::shutdown_handler()
#1 {main} in :
2012-12-27 16:58:50 --- EMERGENCY: ErrorException [ 1 ]: Call to undefined method Controller_Public_Index::_kick_out() ~ MODPATH/site/classes/Controller/Site.php [ 47 ] in :
2012-12-27 16:58:50 --- DEBUG: #0 [internal function]: Kohana_Core::shutdown_handler()
#1 {main} in :
2012-12-27 17:00:32 --- EMERGENCY: ErrorException [ 2 ]: Attempt to assign property of non-object ~ MODPATH/site/classes/Controller/Site.php [ 109 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:00:32 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(109): Kohana_Core::error_handler(2, 'Attempt to assi...', '/Volumes/Files/...', 109, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:04:12 --- EMERGENCY: ErrorException [ 2 ]: Attempt to assign property of non-object ~ MODPATH/site/classes/Controller/Site.php [ 109 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:04:12 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(109): Kohana_Core::error_handler(2, 'Attempt to assi...', '/Volumes/Files/...', 109, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:05:33 --- EMERGENCY: ErrorException [ 2 ]: Attempt to assign property of non-object ~ MODPATH/site/classes/Controller/Site.php [ 109 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:05:33 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(109): Kohana_Core::error_handler(2, 'Attempt to assi...', '/Volumes/Files/...', 109, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:05:34 --- EMERGENCY: ErrorException [ 2 ]: Attempt to assign property of non-object ~ MODPATH/site/classes/Controller/Site.php [ 109 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:05:34 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(109): Kohana_Core::error_handler(2, 'Attempt to assi...', '/Volumes/Files/...', 109, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:09:12 --- EMERGENCY: ErrorException [ 2 ]: Attempt to assign property of non-object ~ MODPATH/site/classes/Controller/Site.php [ 110 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:110
2012-12-27 17:09:12 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(110): Kohana_Core::error_handler(2, 'Attempt to assi...', '/Volumes/Files/...', 110, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:110
2012-12-27 17:12:41 --- EMERGENCY: ErrorException [ 2 ]: Attempt to assign property of non-object ~ MODPATH/site/classes/Controller/Site.php [ 109 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:12:41 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(109): Kohana_Core::error_handler(2, 'Attempt to assi...', '/Volumes/Files/...', 109, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:109
2012-12-27 17:18:50 --- EMERGENCY: View_Exception [ 0 ]: The requested view nav could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php:137
2012-12-27 17:18:50 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(137): Kohana_View->set_filename('nav')
#1 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/View.php(12): Kohana_View->__construct('nav', NULL)
#2 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(112): View::factory('nav')
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#4 [internal function]: Kohana_Controller->execute()
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#7 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#8 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#9 {main} in /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php:137
2012-12-27 17:20:12 --- EMERGENCY: Kohana_Exception [ 0 ]: View variable is not set: nav ~ SYSPATH/classes/Kohana/View.php [ 171 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:131
2012-12-27 17:20:12 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(131): Kohana_View->__get('nav')
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#2 [internal function]: Kohana_Controller->execute()
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#7 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php:131
2012-12-27 17:20:51 --- EMERGENCY: ErrorException [ 2 ]: filemtime(): stat failed for /Volumes/Files/Sites/pixeltenchi2.0/assets/less/jquery.ui.less ~ MODPATH/assets/classes/Assets/Core.php [ 166 ] in :
2012-12-27 17:20:51 --- DEBUG: #0 [internal function]: Kohana_Core::error_handler(2, 'filemtime(): st...', '/Volumes/Files/...', 166, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/modules/assets/classes/Assets/Core.php(166): filemtime('/Volumes/Files/...')
#2 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/Request.php(89): Assets_Core->styles()
#3 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php(28): Request->styles()
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(61): include('/Volumes/Files/...')
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(348): Kohana_View::capture('/Volumes/Files/...', Array)
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#7 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(141): Kohana_Controller_Template->after()
#8 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#9 [internal function]: Kohana_Controller->execute()
#10 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#11 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#12 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#13 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#14 {main} in :
2012-12-27 17:24:14 --- EMERGENCY: ErrorException [ 2 ]: filemtime(): stat failed for /Volumes/Files/Sites/pixeltenchi2.0/assets/less/jquery.ui.less ~ MODPATH/assets/classes/Assets/Core.php [ 166 ] in :
2012-12-27 17:24:14 --- DEBUG: #0 [internal function]: Kohana_Core::error_handler(2, 'filemtime(): st...', '/Volumes/Files/...', 166, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/modules/assets/classes/Assets/Core.php(166): filemtime('/Volumes/Files/...')
#2 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/Request.php(89): Assets_Core->styles()
#3 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php(28): Request->styles()
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(61): include('/Volumes/Files/...')
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(348): Kohana_View::capture('/Volumes/Files/...', Array)
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#7 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(141): Kohana_Controller_Template->after()
#8 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#9 [internal function]: Kohana_Controller->execute()
#10 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#11 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#12 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#13 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#14 {main} in :
2012-12-27 17:24:19 --- EMERGENCY: ErrorException [ 2 ]: filemtime(): stat failed for /Volumes/Files/Sites/pixeltenchi2.0/assets/less/jquery.ui.less ~ MODPATH/assets/classes/Assets/Core.php [ 166 ] in :
2012-12-27 17:24:19 --- DEBUG: #0 [internal function]: Kohana_Core::error_handler(2, 'filemtime(): st...', '/Volumes/Files/...', 166, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/modules/assets/classes/Assets/Core.php(166): filemtime('/Volumes/Files/...')
#2 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/Request.php(89): Assets_Core->styles()
#3 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php(28): Request->styles()
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(61): include('/Volumes/Files/...')
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(348): Kohana_View::capture('/Volumes/Files/...', Array)
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#7 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(141): Kohana_Controller_Template->after()
#8 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#9 [internal function]: Kohana_Controller->execute()
#10 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#11 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#12 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#13 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#14 {main} in :
2012-12-27 17:24:44 --- EMERGENCY: ErrorException [ 2 ]: filemtime(): stat failed for /Volumes/Files/Sites/pixeltenchi2.0/assets/less/jquery.ui.less ~ MODPATH/assets/classes/Assets/Core.php [ 166 ] in :
2012-12-27 17:24:44 --- DEBUG: #0 [internal function]: Kohana_Core::error_handler(2, 'filemtime(): st...', '/Volumes/Files/...', 166, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/modules/assets/classes/Assets/Core.php(166): filemtime('/Volumes/Files/...')
#2 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/Request.php(89): Assets_Core->styles()
#3 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php(28): Request->styles()
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(61): include('/Volumes/Files/...')
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(348): Kohana_View::capture('/Volumes/Files/...', Array)
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#7 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(141): Kohana_Controller_Template->after()
#8 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#9 [internal function]: Kohana_Controller->execute()
#10 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#11 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#12 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#13 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#14 {main} in :
2012-12-27 17:25:22 --- EMERGENCY: ErrorException [ 2 ]: file_put_contents(/Volumes/Files/Sites/pixeltenchi2.0/assets/css/Public_7f1f54e6a50541d446ae7764cc141de6f542c526.css): failed to open stream: Permission denied ~ MODPATH/assets/classes/Assets/Core.php [ 229 ] in :
2012-12-27 17:25:22 --- DEBUG: #0 [internal function]: Kohana_Core::error_handler(2, 'file_put_conten...', '/Volumes/Files/...', 229, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/modules/assets/classes/Assets/Core.php(229): file_put_contents('/Volumes/Files/...', '.han-bun {?  fl...')
#2 /Volumes/Files/Sites/pixeltenchi2.0/application/classes/Request.php(89): Assets_Core->styles()
#3 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php(28): Request->styles()
#4 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(61): include('/Volumes/Files/...')
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(348): Kohana_View::capture('/Volumes/Files/...', Array)
#6 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#7 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(141): Kohana_Controller_Template->after()
#8 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#9 [internal function]: Kohana_Controller->execute()
#10 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#11 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#12 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#13 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#14 {main} in :
2012-12-27 17:26:03 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: sidenav ~ MODPATH/site/views/public.php [ 40 ] in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php:40
2012-12-27 17:26:03 --- DEBUG: #0 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php(40): Kohana_Core::error_handler(8, 'Undefined varia...', '/Volumes/Files/...', 40, Array)
#1 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(61): include('/Volumes/Files/...')
#2 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/View.php(348): Kohana_View::capture('/Volumes/Files/...', Array)
#3 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#4 /Volumes/Files/Sites/pixeltenchi2.0/modules/site/classes/Controller/Site.php(141): Kohana_Controller_Template->after()
#5 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Controller.php(87): Controller_Site->after()
#6 [internal function]: Kohana_Controller->execute()
#7 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Public_Index))
#8 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#9 /Volumes/Files/Sites/pixeltenchi2.0/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#10 /Volumes/Files/Sites/pixeltenchi2.0/index.php(118): Kohana_Request->execute()
#11 {main} in /Volumes/Files/Sites/pixeltenchi2.0/modules/site/views/public.php:40