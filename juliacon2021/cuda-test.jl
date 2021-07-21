using CUDA
CUDA.versioninfo()
a = CuArray([1,2,3,4])
a .+= 1

task_local_storage(:ScalarIndexing, CUDA.GPUArrays.ScalarWarn)
for i in eachindex(a)
    a[i] += 1fend
a
CUDA.allowscalar(false)
a[1]
CUDA.@allowscalar a[1]
a = CuArray{Float32}(undef, 10)
fill!(a, 42)
c = CUDA.ones(length(a))
using LinearAlgebra
mul!(d, CUDA.rand(10,10), d)
out = Ref{Cint}()
CUBLAS.cublasIsamin_v2(CUBLAS.handle(), length(d), d, stride(d, 1), out)
out[]

map(a) do x
    x + 1
end

reduce(+, a)

accumulate(+, a)

broadcast(a, eachcol(a)) do x,Y
    x + sum(Y)
end

using Tullio
using CUDA, CUDAKernels, KernelAbstractions