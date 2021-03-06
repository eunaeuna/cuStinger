/**
 * @author Federico Busato                                                  <br>
 *         Univerity of Verona, Dept. of Computer Science                   <br>
 *         federico.busato@univr.it
 * @date April, 2017
 * @version v1.3
 *
 * @copyright Copyright © 2017 cuStinger. All rights reserved.
 *
 * @license{<blockquote>
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 * * Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 * </blockquote>}
 *
 * @file
 */
#pragma once

#include "Support/HostDevice.hpp"
#include <cuda_runtime.h>
#include <ostream>

inline std::ostream& operator<< (std::ostream& out, const uint2& value);
inline std::ostream& operator<< (std::ostream& out, const int4& value);
inline std::ostream& operator<< (std::ostream& out, const ulong2& value);
inline std::ostream& operator<< (std::ostream& out, const long2& value);
inline std::ostream& operator<< (std::ostream& out, const int2& value);

HOST_DEVICE bool operator== (const int2& A, const int2& B);
HOST_DEVICE bool operator!= (const int2& A, const int2& B);
HOST_DEVICE bool operator<  (const int2& A, const int2& B);
HOST_DEVICE bool operator<= (const int2& A, const int2& B);
HOST_DEVICE bool operator>  (const int2& A, const int2& B);
HOST_DEVICE bool operator>= (const int2& A, const int2& B);

HOST_DEVICE bool operator== (const uint2& A, const uint2& B);
HOST_DEVICE bool operator!= (const uint2& A, const uint2& B);
HOST_DEVICE bool operator<  (const uint2& A, const uint2& B);
HOST_DEVICE bool operator<= (const uint2& A, const uint2& B);
HOST_DEVICE bool operator>  (const uint2& A, const uint2& B);
HOST_DEVICE bool operator>= (const uint2& A, const uint2& B);

HOST_DEVICE bool operator== (const ulong2& A, const ulong2& B);
HOST_DEVICE bool operator!= (const ulong2& A, const ulong2& B);
HOST_DEVICE bool operator<  (const ulong2& A, const ulong2& B);
HOST_DEVICE bool operator<= (const ulong2& A, const ulong2& B);
HOST_DEVICE bool operator>  (const ulong2& A, const ulong2& B);
HOST_DEVICE bool operator>= (const ulong2& A, const ulong2& B);

HOST_DEVICE bool operator== (const long2& A, const long2& B);
HOST_DEVICE bool operator!= (const long2& A, const long2& B);
HOST_DEVICE bool operator<  (const long2& A, const long2& B);
HOST_DEVICE bool operator<= (const long2& A, const long2& B);
HOST_DEVICE bool operator>  (const long2& A, const long2& B);
HOST_DEVICE bool operator>= (const long2& A, const long2& B);

HOST_DEVICE bool operator== (const int4& A, const int4& B);
HOST_DEVICE bool operator!= (const int4& A, const int4& B);
HOST_DEVICE bool operator<  (const int4& A, const int4& B);
HOST_DEVICE bool operator<= (const int4& A, const int4& B);
HOST_DEVICE bool operator>  (const int4& A, const int4& B);
HOST_DEVICE bool operator>= (const int4& A, const int4& B);

namespace xlib {

template<typename T>
struct Make2Str {
    using type = void;
};

template<typename T>
__host__ __device__ __forceinline__
typename Make2Str<T>::type make2(T a, T b);

} // namespace xlib

#include "impl/VectorUtil.i.cuh"
