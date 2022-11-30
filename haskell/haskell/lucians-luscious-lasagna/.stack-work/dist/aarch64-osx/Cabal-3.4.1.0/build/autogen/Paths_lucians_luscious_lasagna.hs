{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_lucians_luscious_lasagna (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/vedran/github/exercism/haskell/haskell/lucians-luscious-lasagna/.stack-work/install/aarch64-osx/4c044fc40319e03a6314884af5bb4fd8b1c572ada2f3dc061fc5cdc3bddad9c9/9.0.2/bin"
libdir     = "/Users/vedran/github/exercism/haskell/haskell/lucians-luscious-lasagna/.stack-work/install/aarch64-osx/4c044fc40319e03a6314884af5bb4fd8b1c572ada2f3dc061fc5cdc3bddad9c9/9.0.2/lib/aarch64-osx-ghc-9.0.2/lucians-luscious-lasagna-1.0.0.0-BTD4QnG0d9xBUPnAXTE27f"
dynlibdir  = "/Users/vedran/github/exercism/haskell/haskell/lucians-luscious-lasagna/.stack-work/install/aarch64-osx/4c044fc40319e03a6314884af5bb4fd8b1c572ada2f3dc061fc5cdc3bddad9c9/9.0.2/lib/aarch64-osx-ghc-9.0.2"
datadir    = "/Users/vedran/github/exercism/haskell/haskell/lucians-luscious-lasagna/.stack-work/install/aarch64-osx/4c044fc40319e03a6314884af5bb4fd8b1c572ada2f3dc061fc5cdc3bddad9c9/9.0.2/share/aarch64-osx-ghc-9.0.2/lucians-luscious-lasagna-1.0.0.0"
libexecdir = "/Users/vedran/github/exercism/haskell/haskell/lucians-luscious-lasagna/.stack-work/install/aarch64-osx/4c044fc40319e03a6314884af5bb4fd8b1c572ada2f3dc061fc5cdc3bddad9c9/9.0.2/libexec/aarch64-osx-ghc-9.0.2/lucians-luscious-lasagna-1.0.0.0"
sysconfdir = "/Users/vedran/github/exercism/haskell/haskell/lucians-luscious-lasagna/.stack-work/install/aarch64-osx/4c044fc40319e03a6314884af5bb4fd8b1c572ada2f3dc061fc5cdc3bddad9c9/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "lucians_luscious_lasagna_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "lucians_luscious_lasagna_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "lucians_luscious_lasagna_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "lucians_luscious_lasagna_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "lucians_luscious_lasagna_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "lucians_luscious_lasagna_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
