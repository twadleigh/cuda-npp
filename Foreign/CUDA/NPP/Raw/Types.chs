{-# LANGUAGE ForeignFunctionInterface #-}

#include <nppdefs.h>
{#context lib = "libnpp" #}

module Foreign.CUDA.NPP.Raw.Types where

import C2HS

type Npp8u = {#type Npp8u#}
type Npp8s = {#type Npp8s#}
type Npp16u = {#type Npp16u#}
type Npp16s = {#type Npp16s#}
type Npp32u = {#type Npp32u#}
type Npp32s = {#type Npp32s#}
type Npp64u = {#type Npp64u#}
type Npp64s = {#type Npp64s#}
type Npp32f = {#type Npp32f#}
type Npp64f = {#type Npp64f#}

data Npp16sc = Npp16sc Npp16s Npp16s deriving (Eq,Show)
data Npp32sc = Npp32sc Npp32s Npp32s deriving (Eq,Show)
data Npp32fc = Npp32fc Npp32f Npp32f deriving (Eq,Show)
data Npp64sc = Npp64sc Npp64s Npp64s deriving (Eq,Show)
data Npp64fc = Npp64fc Npp64f Npp64f deriving (Eq,Show)

{#enum NppiInterpolationMode as InterpolationMode 
       {underscoreToCase}
       with prefix = "NPPI" deriving (Eq,Show) #}

{#enum NppStatus as Status
       {underscoreToCase}
       with prefix = "NPP" deriving (Eq,Show) #}

{#enum NppGpuComputeCapability as GpuComputeCapability
       {underscoreToCase}
       with prefix = "NPP" deriving (Eq,Show) #}

{#enum NppiAxis as Axis
       {underscoreToCase}
       with prefix = "NPP" deriving (Eq,Show) #}

{#enum NppCmpOp as CmpOp
       {underscoreToCase}
       with prefix = "NPP" deriving (Eq,Show) #}

{#enum NppRoundMode as RoundMode
       {underscoreToCase}
       with prefix = "NPP" deriving (Eq,Show) #}

{#enum NppiBorderType as BorderType
       {underscoreToCase}
       with prefix = "NPP" deriving (Eq,Show) #}

{#enum NppHintAlgorithm as HintAlgorithm {}
       with prefix = "npp" deriving (Eq,Show) #}

data LibraryVersion = LibraryVersion CInt CInt CInt
                      deriving (Eq,Show)

data Point = Point CInt CInt 
             deriving (Eq,Show)

data Size = Size CInt CInt 
            deriving (Eq,Show)

data Rect = Rect CInt CInt CInt CInt 
            deriving (Eq,Show)

data HaarClassifier_32f = HaarClassifier_32f
  { numClassifiers :: CInt
  , classifers :: Ptr Npp32s
  , classifierStep :: {#type size_t#}
  , classifierSize :: Size
  , counterDevice :: Ptr Npp32s
  }

data HaarBuffer = HaarBuffer
  { haarBufferSize :: CInt
  , haarBuffer :: Ptr Npp32s
  }

