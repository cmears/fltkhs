module Graphics.UI.FLTK.LowLevel.Fl_Bitmap
 (
  bitmapNew,
  bitmapW,
  bitmapH,
  bitmapD,
  bitmapLd,
  bitmapCount,
  bitmapCopyWithWH,
  bitmapCopy,
  bitmapColorAverage,
  bitmapInactive,
  bitmapDesaturate,
  bitmapLabel,
  bitmapLabelWithMenuItem,
  bitmapDrawWithCxCy,
  bitmapDrawWithCx,
  bitmapDrawWithCy,
  bitmapDraw,
  bitmapUncache
  )
where
#include "Fl_ExportMacros.h"
#include "Fl_Types.h"
#include "Fl_BitmapC.h"
import C2HS hiding (cFromEnum, unsafePerformIO, cFromBool, cToBool,cToEnum)
import Foreign.C.Types
import Graphics.UI.FLTK.LowLevel.Fl_Enumerations
import Graphics.UI.FLTK.LowLevel.Fl_Types
import Data.ByteString

{# fun unsafe Fl_Bitmap_New as flBitmapNew' { `String',`Int',`Int' } -> `Ptr ()' id #}
bitmapNew :: ByteString -> Size -> IO (Bitmap a)
bitmapNew bits (Size (Width width') (Height height')) = undefined
{# fun unsafe Fl_Bitmap_w as w' { id `Ptr ()' } -> `Int' #}
bitmapW :: Bitmap a  ->  IO (Int)
bitmapW bitmap = withObject bitmap $ \bitmapPtr -> w' bitmapPtr
{# fun unsafe Fl_Bitmap_h as h' { id `Ptr ()' } -> `Int' #}
bitmapH :: Bitmap a  ->  IO (Int)
bitmapH bitmap = withObject bitmap $ \bitmapPtr -> h' bitmapPtr
{# fun unsafe Fl_Bitmap_d as d' { id `Ptr ()' } -> `Int' #}
bitmapD :: Bitmap a  ->  IO (Int)
bitmapD bitmap = withObject bitmap $ \bitmapPtr -> d' bitmapPtr
{# fun unsafe Fl_Bitmap_ld as ld' { id `Ptr ()' } -> `Int' #}
bitmapLd :: Bitmap a  ->  IO (Int)
bitmapLd bitmap = withObject bitmap $ \bitmapPtr -> ld' bitmapPtr
{# fun unsafe Fl_Bitmap_count as count' { id `Ptr ()' } -> `Int' #}
bitmapCount :: Bitmap a  ->  IO (Int)
bitmapCount bitmap = withObject bitmap $ \bitmapPtr -> count' bitmapPtr
{# fun unsafe Fl_Bitmap_copy_with_w_h as copyWithWH' { id `Ptr ()',`Int',`Int' } -> `Ptr ()' id #}
bitmapCopyWithWH :: Bitmap a  -> Int -> Int ->  IO (Ptr ())
bitmapCopyWithWH bitmap w h = withObject bitmap $ \bitmapPtr -> copyWithWH' bitmapPtr w h
{# fun unsafe Fl_Bitmap_copy as copy' { id `Ptr ()' } -> `Ptr ()' id #}
bitmapCopy :: Bitmap a  ->  IO (Ptr ())
bitmapCopy bitmap = withObject bitmap $ \bitmapPtr -> copy' bitmapPtr
{# fun unsafe Fl_Bitmap_color_average as colorAverage' { id `Ptr ()',cFromColor `Color',`Float' } -> `()' #}
bitmapColorAverage :: Bitmap a  -> Color -> Float ->  IO ()
bitmapColorAverage bitmap c i = withObject bitmap $ \bitmapPtr -> colorAverage' bitmapPtr c i
{# fun unsafe Fl_Bitmap_inactive as inactive' { id `Ptr ()' } -> `()' #}
bitmapInactive :: Bitmap a  ->  IO ()
bitmapInactive bitmap = withObject bitmap $ \bitmapPtr -> inactive' bitmapPtr
{# fun unsafe Fl_Bitmap_desaturate as desaturate' { id `Ptr ()' } -> `()' #}
bitmapDesaturate :: Bitmap a  ->  IO ()
bitmapDesaturate bitmap = withObject bitmap $ \bitmapPtr -> desaturate' bitmapPtr
{# fun unsafe Fl_Bitmap_label as label' { id `Ptr ()',id `Ptr ()' } -> `()' #}
bitmapLabel :: Bitmap a  -> Widget a  ->  IO ()
bitmapLabel bitmap w = withObject bitmap $ \bitmapPtr -> withObject w $ \wPtr -> label' bitmapPtr wPtr
{# fun unsafe Fl_Bitmap_label_with_menu_item as labelWithMenuItem' { id `Ptr ()',id `Ptr ()' } -> `()' #}
bitmapLabelWithMenuItem :: Bitmap a  -> MenuItem a  ->  IO ()
bitmapLabelWithMenuItem bitmap m = withObject bitmap $ \bitmapPtr -> withObject m $ \mPtr -> labelWithMenuItem' bitmapPtr mPtr
{# fun unsafe Fl_Bitmap_draw_with_cx_cy as drawWithCxCy' { id `Ptr ()',`Int',`Int',`Int',`Int',`Int',`Int' } -> `()' #}
bitmapDrawWithCxCy :: Bitmap a  -> Rectangle -> Int -> Int ->  IO ()
bitmapDrawWithCxCy bitmap rectangle cx cy = let (x_pos', y_pos', width', height') = fromRectangle rectangle in withObject bitmap $ \bitmapPtr -> drawWithCxCy' bitmapPtr x_pos' y_pos' width' height' cx cy
{# fun unsafe Fl_Bitmap_draw_with_cx as drawWithCx' { id `Ptr ()',`Int',`Int',`Int',`Int',`Int' } -> `()' #}
bitmapDrawWithCx :: Bitmap a  -> Rectangle -> Int ->  IO ()
bitmapDrawWithCx bitmap rectangle cx = let (x_pos', y_pos', width', height') = fromRectangle rectangle in withObject bitmap $ \bitmapPtr -> drawWithCx' bitmapPtr x_pos' y_pos' width' height' cx
{# fun unsafe Fl_Bitmap_draw_with_cy as drawWithCy' { id `Ptr ()',`Int',`Int',`Int',`Int',`Int' } -> `()' #}
bitmapDrawWithCy :: Bitmap a  -> Rectangle -> Int ->  IO ()
bitmapDrawWithCy bitmap rectangle cy = let (x_pos', y_pos', width', height') = fromRectangle rectangle in withObject bitmap $ \bitmapPtr -> drawWithCy' bitmapPtr x_pos' y_pos' width' height' cy
{# fun unsafe Fl_Bitmap_draw as draw' { id `Ptr ()',`Int',`Int' } -> `()' #}
bitmapDraw :: Bitmap a  -> Position ->  IO ()
bitmapDraw bitmap (Position (X x_pos') (Y y_pos')) = withObject bitmap $ \bitmapPtr -> draw' bitmapPtr x_pos' y_pos'
{# fun unsafe Fl_Bitmap_uncache as uncache' { id `Ptr ()' } -> `()' #}
bitmapUncache :: Bitmap a  ->  IO ()
bitmapUncache bitmap = withObject bitmap $ \bitmapPtr -> uncache' bitmapPtr
