-- |
-- Module      : Data.Text.Utf16
-- Copyright   : (c) Tom Harper 2008-2009,
--               (c) Bryan O'Sullivan 2009,
--               (c) Duncan Coutts 2009
--
-- License     : BSD-style
-- Maintainer  : rtharper@aftereternity.co.uk, bos@serpentine.com,
--               duncan@haskell.org
-- Stability   : experimental
-- Portability : portable
--
-- Basic UTF-32 validation.
module Data.Text.Utf32
    (
      validate
    ) where

import Data.Word (Word32)

validate    :: Word32 -> Bool
validate x1 = (x1 >= 0x0 && x1 < 0xD800) || (x1 > 0xDFFF && x1 <= 0x10FFFF)
{-# INLINE validate #-}