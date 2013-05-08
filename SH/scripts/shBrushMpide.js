/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/SyntaxHighlighter
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/SyntaxHighlighter/donate.html
 *
 * @version
 * 3.0.83 (July 02 2010)
 * 
 * @copyright
 * Copyright (C) 2004-2010 Alex Gorbatchev.
 *
 * @license
 * Dual licensed under the MIT and GPL licenses.
 */
;(function()
  {
      // CommonJS
      typeof(require) != 'undefined' ? SyntaxHighlighter = require('shCore').SyntaxHighlighter : null;
      
      function Brush()
      {
	  // Copyright 2006 Shin, YoungJin
	  
	  var mp_literal1 = 'HIGH LOW INPUT OUTPUT DEC BIN HEX OCT BYTE PI ' +
	      'HALF_PI TWO_PI LSBFIRST MSBFIRST CHANGE FALLING RISING DEFAULT ' +
	      'EXTERNAL INTERNAL INTERNAL1V1 INTERNAL2V56';
	  
	  var mp_keyword1 = 'boolean break byte case char class continue default do double ' +
	      'else false float for if int long new null private protected ' +
	      'public return short signed static String switch this throw ' +
	      'try true unsigned void while word';

	  var mp_keyword2 = 'int8_t int16_t int32_t int64_t ' +
	      'uint8_t uint16_t uint32_t uint64_t abs acos asin atan atan2 ceil constrain ' +
	      'cos degrees exp floor log map max min radians random randomSeed round ' +
	      'sin sq sqrt tan bitRead bitWrite bitSet bitClear bit highByte lowByte ' +
	      'analogReference analogRead analogWrite attachInterrupt detachInterrupt ' +
	      'delay delayMicroseconds digitalWrite digitalRead interrupts millis ' +
	      'micros noInterrupts noTone pinMode pulseIn shiftIn shiftOut tone Serial ' +
	      'Serial1 Serial2 Serial3 begin end peek read print println available flush';

	  var mp_keyword3 = 'setup loop';

	  var datatypes = 'ATOM BOOL BOOLEAN BYTE CHAR COLORREF DWORD DWORDLONG DWORD_PTR ' +
	      'DWORD32 DWORD64 FLOAT HACCEL HALF_PTR HANDLE HBITMAP HBRUSH ' +
	      'HCOLORSPACE HCONV HCONVLIST HCURSOR HDC HDDEDATA HDESK HDROP HDWP ' +
	      'HENHMETAFILE HFILE HFONT HGDIOBJ HGLOBAL HHOOK HICON HINSTANCE HKEY ' +
	      'HKL HLOCAL HMENU HMETAFILE HMODULE HMONITOR HPALETTE HPEN HRESULT ' +
	      'HRGN HRSRC HSZ HWINSTA HWND INT INT_PTR INT32 INT64 LANGID LCID LCTYPE ' +
	      'LGRPID LONG LONGLONG LONG_PTR LONG32 LONG64 LPARAM LPBOOL LPBYTE LPCOLORREF ' +
	      'LPCSTR LPCTSTR LPCVOID LPCWSTR LPDWORD LPHANDLE LPINT LPLONG LPSTR LPTSTR ' +
	      'LPVOID LPWORD LPWSTR LRESULT PBOOL PBOOLEAN PBYTE PCHAR PCSTR PCTSTR PCWSTR ' +
	      'PDWORDLONG PDWORD_PTR PDWORD32 PDWORD64 PFLOAT PHALF_PTR PHANDLE PHKEY PINT ' +
	      'PINT_PTR PINT32 PINT64 PLCID PLONG PLONGLONG PLONG_PTR PLONG32 PLONG64 POINTER_32 ' +
	      'POINTER_64 PSHORT PSIZE_T PSSIZE_T PSTR PTBYTE PTCHAR PTSTR PUCHAR PUHALF_PTR ' +
	      'PUINT PUINT_PTR PUINT32 PUINT64 PULONG PULONGLONG PULONG_PTR PULONG32 PULONG64 ' +
	      'PUSHORT PVOID PWCHAR PWORD PWSTR SC_HANDLE SC_LOCK SERVICE_STATUS_HANDLE SHORT ' +
	      'SIZE_T SSIZE_T TBYTE TCHAR UCHAR UHALF_PTR UINT UINT_PTR UINT32 UINT64 ULONG ' +
	      'ULONGLONG ULONG_PTR ULONG32 ULONG64 USHORT USN VOID WCHAR WORD WPARAM WPARAM WPARAM ' +
	      'bool __int32 __int64 __int8 __int16 __wchar_t ' +
	      'clock_t _complex _dev_t _diskfree_t div_t ldiv_t _exception _EXCEPTION_POINTERS ' +
	      'FILE _finddata_t _finddatai64_t _wfinddata_t _wfinddatai64_t __finddata64_t ' +
	      '__wfinddata64_t _FPIEEE_RECORD fpos_t _HEAPINFO _HFILE lconv intptr_t ' +
	      'jmp_buf mbstate_t _off_t _onexit_t _PNH ptrdiff_t _purecall_handler ' +
	      'sig_atomic_t size_t _stat __stat64 _stati64 terminate_function ' +
	      'time_t __time64_t _timeb __timeb64 tm uintptr_t _utimbuf ' +
	      'va_list wchar_t wctrans_t wctype_t wint_t';
	  
	  var keywords =  'catch class const __finally __exception __try ' +
	      'const_cast __declspec ' +
	      'delete deprecated dllexport dllimport dynamic_cast ' +
	      'enum explicit extern friend goto inline ' +
	      'mutable naked namespace noinline noreturn nothrow ' +
	      'register reinterpret_cast selectany ' +
	      'sizeof static_cast struct template ' +
	      'thread typedef typeid typename union ' +
	      'using uuid virtual volatile whcar_t';
	  
	  var functions = 'assert isalnum isalpha iscntrl isdigit isgraph islower isprint' +
	      'ispunct isspace isupper isxdigit tolower toupper errno localeconv ' +
	      'setlocale cosh fabs fmod ' +
	      'frexp ldexp log10 modf pow sinh tanh jmp_buf ' +
	      'longjmp setjmp raise signal sig_atomic_t va_arg va_end va_start ' +
	      'clearerr fclose feof ferror fflush fgetc fgetpos fgets fopen ' +
	      'fprintf fputc fputs fread freopen fscanf fseek fsetpos ftell ' +
	      'fwrite getc getchar gets perror printf putc putchar puts remove ' +
	      'rename rewind scanf setbuf setvbuf sprintf sscanf tmpfile tmpnam ' +
	      'ungetc vfprintf vprintf vsprintf abort atexit atof atoi atol ' +
	      'bsearch calloc div exit free getenv labs ldiv malloc mblen mbstowcs ' +
	      'mbtowc qsort rand realloc srand strtod strtol strtoul system ' +
	      'wcstombs wctomb memchr memcmp memcpy memmove memset strcat strchr ' +
	      'strcmp strcoll strcpy strcspn strerror strlen strncat strncmp ' +
	      'strncpy strpbrk strrchr strspn strstr strtok strxfrm asctime ' +
	      'clock ctime difftime gmtime localtime mktime strftime time';
	  
	  this.regexList = [
	    { regex: SyntaxHighlighter.regexLib.singleLineCComments,  css: 'comments' }, // one line comments
	    { regex: SyntaxHighlighter.regexLib.multiLineCComments,   css: 'comments' }, // multiline comments
	    { regex: SyntaxHighlighter.regexLib.doubleQuotedString,   css: 'string' },	 // strings
	    { regex: SyntaxHighlighter.regexLib.singleQuotedString,   css: 'string' },	 // strings
	    { regex: /^ *#.*/gm,				      css: 'preprocessor' },
	    { regex: new RegExp(this.getKeywords(datatypes), 'gm'),   css: 'color1' },
	    { regex: new RegExp(this.getKeywords(functions), 'gm'),   css: 'functions' },
	    { regex: new RegExp(this.getKeywords(keywords), 'gm'),    css: 'keyword' },
	    { regex: new RegExp(this.getKeywords(mp_literal1), 'gm'), css: 'mp_literal1' }, // MPIDE
	    { regex: new RegExp(this.getKeywords(mp_keyword1), 'gm'), css: 'mp_keyword1' }, // MPIDE
	    { regex: new RegExp(this.getKeywords(mp_keyword2), 'gm'), css: 'mp_keyword2' }, // MPIDE
	    { regex: new RegExp(this.getKeywords(mp_keyword3), 'gm'), css: 'mp_keyword3 bold' }  // MPIDE
	    /*
	     * { regex: new RegExp(this.getKeywords(datatypes), 'gm'),   css: 'color1 bold' },
	     * { regex: new RegExp(this.getKeywords(functions), 'gm'),   css: 'functions bold' },
	     * { regex: new RegExp(this.getKeywords(keywords), 'gm'),    css: 'keyword bold' },
	     * { regex: new RegExp(this.getKeywords(mp_literal1), 'gm'), css: 'mp_literal1 bold' }, // MPIDE
	     * { regex: new RegExp(this.getKeywords(mp_keyword1), 'gm'), css: 'mp_keyword1 bold' }, // MPIDE
	     * { regex: new RegExp(this.getKeywords(mp_keyword2), 'gm'), css: 'mp_keyword2 bold' }, // MPIDE
	     * { regex: new RegExp(this.getKeywords(mp_keyword3), 'gm'), css: 'mp_keyword3 bold' }  // MPIDE
	     */

			    ];
      };

      Brush.prototype	= new SyntaxHighlighter.Highlighter();
      Brush.aliases	= ['mpide', 'MPIDE', 'Mpide'];
      
      SyntaxHighlighter.brushes.Mpide = Brush;
      SyntaxHighlighter.defaults['toolbar'] = false;

      // CommonJS
      typeof(exports) != 'undefined' ? exports.Brush = Brush : null;
  })();
