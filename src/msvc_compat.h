#ifndef MSVC_COMPAT_H
#define MSVC_COMPAT_H

// MSVC 2015 兼容性：新版 Windows SDK 的 ucrt/wchar.h 使用 _mm_loadu_si64，
// 但 MSVC 2015 不支持该 intrinsic，需在包含任何可能间接包含 wchar.h 的头文件之前包含本文件
#if defined(_MSC_VER) && _MSC_VER < 1920
#include <emmintrin.h>
extern "C" __inline __m128i __forceinline _mm_loadu_si64(void const* _Mem) {
    return _mm_loadl_epi64((__m128i const*)_Mem);
}
#endif

#endif // MSVC_COMPAT_H
