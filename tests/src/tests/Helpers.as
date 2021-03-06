// =================================================================================================
//
//	Starling Framework
//	Copyright 2011 Gamua OG. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package tests
{
    import flash.geom.Matrix;
    import flash.geom.Point;
    import flash.geom.Rectangle;
    
    import org.flexunit.assertThat;
    import org.flexunit.asserts.assertEquals;
    import org.hamcrest.number.closeTo;

    internal class Helpers
    {
        public static function compareRectangles(rect1:Rectangle, rect2:Rectangle, 
                                                 e:Number=0.0001):void
        {
            assertThat(rect1.x, closeTo(rect2.x, e));
            assertThat(rect1.y, closeTo(rect2.y, e));
            assertThat(rect1.width, closeTo(rect2.width, e));
            assertThat(rect1.height, closeTo(rect2.height, e));
        }
        
        public static function comparePoints(point1:Point, point2:Point, e:Number=0.0001):void
        {
            assertThat(point1.x, closeTo(point2.x, e));
            assertThat(point1.y, closeTo(point2.y, e));
        }
        
        public static function compareVectors(vector1:Vector.<Number>, vector2:Vector.<Number>,
                                              e:Number=0.0001):void
        {
            assertEquals(vector1.length, vector2.length);
            
            for (var i:int=0; i<vector1.length; ++i)
                assertThat(vector1[i], closeTo(vector2[i], e));
        }
        
        public static function compareMatrices(matrix1:Matrix, matrix2:Matrix, e:Number=0.0001):void
        {
            assertThat(matrix1.a,  closeTo(matrix2.a,  e));
            assertThat(matrix1.b,  closeTo(matrix2.b,  e));
            assertThat(matrix1.c,  closeTo(matrix2.c,  e));
            assertThat(matrix1.d,  closeTo(matrix2.d,  e));
            assertThat(matrix1.tx, closeTo(matrix2.tx, e));
            assertThat(matrix1.ty, closeTo(matrix2.ty, e));
        }
    }
}