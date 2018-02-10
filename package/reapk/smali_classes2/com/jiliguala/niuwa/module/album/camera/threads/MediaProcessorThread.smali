.class public abstract Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field protected static final MAX_DIRECTORY_SIZE:I = 0x1f400000

.field protected static final MAX_THRESHOLD_DAYS:I = 0x337f9800

.field private static final TAG:Ljava/lang/String; = "MediaProcessorThread"

.field private static final THUMBNAIL_BIG:I = 0x1

.field private static final THUMBNAIL_SMALL:I = 0x2


# instance fields
.field protected clearOldFiles:Z

.field protected context:Landroid/content/Context;

.field protected filePath:Ljava/lang/String;

.field protected foldername:Ljava/lang/String;

.field protected mediaExtension:Ljava/lang/String;

.field protected shouldCreateThumnails:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "foldername"    # Ljava/lang/String;
    .param p3, "shouldCreateThumbnails"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->clearOldFiles:Z

    .line 87
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    .line 89
    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->shouldCreateThumnails:Z

    .line 90
    return-void
.end method

.method private compressAndSaveImage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .param p1, "fileImage"    # Ljava/lang/String;
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    new-instance v9, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, "exif":Landroid/media/ExifInterface;
    const-string v2, "ImageWidth"

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 231
    .local v20, "width":Ljava/lang/String;
    const-string v2, "ImageLength"

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "length":Ljava/lang/String;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v14

    .line 233
    .local v14, "orientation":I
    const/16 v16, 0x0

    .line 238
    .local v16, "rotate":I
    packed-switch v14, :pswitch_data_0

    .line 250
    :goto_0
    :pswitch_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 251
    .local v18, "w":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 253
    .local v11, "l":I
    move/from16 v0, v18

    if-le v0, v11, :cond_1

    move/from16 v19, v18

    .line 255
    .local v19, "what":I
    :goto_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0x5dc

    move/from16 v0, v19

    if-le v0, v2, :cond_2

    .line 257
    mul-int/lit8 v2, p2, 0x4

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 269
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 270
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v15, "original":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_fact_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v10, "file":Ljava/io/File;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    .local v17, "stream":Ljava/io/FileOutputStream;
    if-eqz v16, :cond_0

    .line 274
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 275
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 276
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 278
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 288
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 289
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 290
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 240
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "l":I
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "original":Ljava/io/File;
    .end local v17    # "stream":Ljava/io/FileOutputStream;
    .end local v18    # "w":I
    .end local v19    # "what":I
    :pswitch_1
    const/16 v16, -0x5a

    .line 241
    goto/16 :goto_0

    .line 243
    :pswitch_2
    const/16 v16, 0xb4

    .line 244
    goto/16 :goto_0

    .line 246
    :pswitch_3
    const/16 v16, 0x5a

    goto/16 :goto_0

    .restart local v11    # "l":I
    .restart local v18    # "w":I
    :cond_1
    move/from16 v19, v11

    .line 253
    goto/16 :goto_1

    .line 258
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "what":I
    :cond_2
    const/16 v2, 0x3e8

    move/from16 v0, v19

    if-le v0, v2, :cond_3

    const/16 v2, 0x5dc

    move/from16 v0, v19

    if-gt v0, v2, :cond_3

    .line 259
    mul-int/lit8 v2, p2, 0x3

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 292
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "l":I
    .end local v12    # "length":Ljava/lang/String;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "orientation":I
    .end local v16    # "rotate":I
    .end local v18    # "w":I
    .end local v19    # "what":I
    .end local v20    # "width":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 293
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    throw v8

    .line 260
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "l":I
    .restart local v12    # "length":Ljava/lang/String;
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "orientation":I
    .restart local v16    # "rotate":I
    .restart local v18    # "w":I
    .restart local v19    # "what":I
    .restart local v20    # "width":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x190

    move/from16 v0, v19

    if-le v0, v2, :cond_4

    const/16 v2, 0x3e8

    move/from16 v0, v19

    if-gt v0, v2, :cond_4

    .line 261
    mul-int/lit8 v2, p2, 0x2

    :try_start_1
    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 295
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "l":I
    .end local v12    # "length":Ljava/lang/String;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "orientation":I
    .end local v16    # "rotate":I
    .end local v18    # "w":I
    .end local v19    # "what":I
    .end local v20    # "width":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 296
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Corrupt or deleted file???"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "l":I
    .restart local v12    # "length":Ljava/lang/String;
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "orientation":I
    .restart local v16    # "rotate":I
    .restart local v18    # "w":I
    .restart local v19    # "what":I
    .restart local v20    # "width":Ljava/lang/String;
    :cond_4
    :try_start_2
    move/from16 v0, p2

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 238
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private copyFileToDir()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 306
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "copyTo":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v6, "streamIn":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    .local v5, "outStream":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 311
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    .line 312
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 317
    .end local v0    # "buf":[B
    .end local v1    # "copyTo":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v6    # "streamIn":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 319
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "File not found"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[B
    .restart local v1    # "copyTo":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "len":I
    .restart local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "streamIn":Ljava/io/FileInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 315
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 327
    return-void

    .line 320
    .end local v0    # "buf":[B
    .end local v1    # "copyTo":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v6    # "streamIn":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 321
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 322
    throw v2

    .line 323
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Corrupt or deleted file???"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 156
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 159
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 162
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 165
    if-eqz v8, :cond_0

    .line 166
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    if-eqz v8, :cond_2

    .line 166
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 168
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 166
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 95
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 98
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 100
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 101
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 105
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 149
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 95
    goto :goto_0

    .line 112
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 114
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 120
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 121
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 123
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 125
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 126
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 127
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 134
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 135
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 137
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 128
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 129
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 130
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 141
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 142
    invoke-static {p0, p1, v8, v8}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 145
    :cond_8
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method private getThumbnailSmallPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->compressAndSaveImage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThumnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->compressAndSaveImage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 176
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 488
    const-string v8, ""

    .line 495
    .local v8, "extension":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, "displayName":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 508
    .local v9, "position":I
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 521
    .local v11, "sizeIndex":I
    const/4 v10, 0x0

    .line 522
    .local v10, "size":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 533
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v9    # "position":I
    .end local v10    # "size":Ljava/lang/String;
    .end local v11    # "sizeIndex":I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 535
    return-object v8

    .line 528
    .restart local v7    # "displayName":Ljava/lang/String;
    .restart local v9    # "position":I
    .restart local v10    # "size":Ljava/lang/String;
    .restart local v11    # "sizeIndex":I
    :cond_1
    :try_start_1
    const-string v0, "Unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v9    # "position":I
    .end local v10    # "size":Ljava/lang/String;
    .end local v11    # "sizeIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public clearOldFiles()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->clearOldFiles:Z

    .line 193
    return-void
.end method

.method protected createThumbnails(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 208
    .local v0, "images":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->getThumnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 209
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->getThumbnailSmallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 210
    return-object v0
.end method

.method protected downloadAndProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->downloadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->process()V

    .line 198
    return-void
.end method

.method protected downloadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v7, ""

    .line 331
    .local v7, "localFilePath":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 332
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 336
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 338
    .local v9, "stream":Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 339
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->mediaExtension:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 340
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v6, "localFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 344
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 346
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_0

    .line 347
    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 355
    .end local v0    # "buffer":[B
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "len":I
    .end local v6    # "localFile":Ljava/io/File;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 362
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    return-object v7

    .line 348
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    .restart local v6    # "localFile":Ljava/io/File;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "stream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 349
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 350
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 357
    .end local v0    # "buffer":[B
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "len":I
    .end local v6    # "localFile":Ljava/io/File;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 358
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected getAbsoluteImagePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "imageUri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 566
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 572
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.android.gallery3d.provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.gallery3d"

    const-string v4, "com.google.android.gallery3d"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 576
    :cond_0
    const-string v7, ""

    .line 577
    .local v7, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 578
    .local v8, "imageUriString":Ljava/lang/String;
    const-string v0, "content://com.google.android.gallery3d"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://com.google.android.apps.photos.content"

    .line 579
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://com.android.providers.media.documents"

    .line 580
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://com.google.android.apps.docs.storage"

    .line 581
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://com.microsoft.skydrive.content.external"

    .line 582
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 591
    :goto_0
    if-nez v7, :cond_2

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 595
    :cond_2
    return-object v7

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 586
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 587
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 588
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected manageDiretoryCache(Ljava/lang/String;)V
    .locals 14
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-boolean v10, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->clearOldFiles:Z

    if-nez v10, :cond_1

    .line 406
    :cond_0
    return-void

    .line 369
    :cond_1
    const/4 v3, 0x0

    .line 370
    .local v3, "directory":Ljava/io/File;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 371
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 372
    .local v5, "files":[Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 373
    .local v0, "count":J
    if-eqz v5, :cond_0

    .line 376
    array-length v11, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v4, v5, v10

    .line 377
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v0, v12

    .line 376
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 383
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    const-wide/32 v10, 0x1f400000

    cmp-long v10, v0, v10

    if-lez v10, :cond_0

    .line 384
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 385
    .local v8, "today":J
    new-instance v6, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;

    invoke-direct {v6, p0, v8, v9, p1}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;-><init>(Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;JLjava/lang/String;)V

    .line 398
    .local v6, "filter":Ljava/io/FileFilter;
    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    .line 399
    .local v7, "filterFiles":[Ljava/io/File;
    const/4 v2, 0x0

    .line 400
    .local v2, "deletedFileCount":I
    array-length v11, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_0

    aget-object v4, v7, v10

    .line 401
    .restart local v4    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    .line 402
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 400
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method protected process()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->copyFileToDir()V

    .line 204
    :cond_0
    return-void
.end method

.method protected processContentProviderMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->checkExtension(Landroid/net/Uri;)Ljava/lang/String;

    .line 541
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 543
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    .line 546
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 547
    .local v4, "outStream":Ljava/io/BufferedOutputStream;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 549
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 550
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 555
    .end local v0    # "buf":[B
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 557
    throw v1

    .line 552
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[B
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 553
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 554
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->process()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    return-void

    .line 558
    .end local v0    # "buf":[B
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    .line 559
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    throw v1
.end method

.method protected processGooglePhotosMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->checkExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "retrievedExtension":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 449
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 453
    :cond_0
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    .line 456
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "r"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 458
    .local v6, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 460
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 462
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 464
    .local v7, "reader":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 465
    .local v5, "outStream":Ljava/io/BufferedOutputStream;
    const/16 v9, 0x800

    new-array v0, v9, [B

    .line 467
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_1

    .line 468
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 474
    .end local v0    # "buf":[B
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v6    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "reader":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 476
    throw v1

    .line 470
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[B
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "reader":Ljava/io/BufferedInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 471
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 472
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 473
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->process()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    return-void

    .line 477
    .end local v0    # "buf":[B
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v6    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "reader":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    throw v1
.end method

.method protected processPicasaMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 415
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 417
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->foldername:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 418
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    .line 420
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 421
    .local v4, "outStream":Ljava/io/BufferedOutputStream;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 423
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 424
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 429
    .end local v0    # "buf":[B
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 431
    throw v1

    .line 426
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[B
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 427
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 428
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->process()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    return-void

    .line 432
    .end local v0    # "buf":[B
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    throw v1
.end method

.method protected abstract processingDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->context:Landroid/content/Context;

    .line 185
    return-void
.end method

.method public setMediaExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->mediaExtension:Ljava/lang/String;

    .line 189
    return-void
.end method
