module PatchedGHC.Orphan.Use where

import Data.Proxy
import PlutusTx
import PlutusTx.Plugin.Utils (plc)

import PatchedGHC.Orphan.Lib

instance C Integer where
    m _ = ()

-- GHC panic: interface file is missing entry for name:$cm
er1 = plc (Proxy @"er1") (m (1 :: Integer))



