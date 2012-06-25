module Common (changeBl) where

import System.IO
import System.Environment
import System.Exit

changeBl b m = do
  h  <- openFile b ReadWriteMode
  b' <- hGetLine h
  m' <- readFile m
  a  <- getArgs >>= return . head
  let br = read b' :: Float
      mb = read m' :: Float
      a' = read a :: Float
      r  = round $ norm (br + a'*mb/100) mb
  hPutStrLn h $ show r
  hClose h

norm v m
    | v > m = m
    | v < 0 = 0
    | otherwise = v

