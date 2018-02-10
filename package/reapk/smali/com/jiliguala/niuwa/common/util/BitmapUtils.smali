.class public Lcom/jiliguala/niuwa/common/util/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/common/util/BitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v4, 0x0

    .line 49
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 50
    .local v0, "byteCount":I
    int-to-long v8, v0

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/common/util/d/a;->a(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 51
    new-instance v7, Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException;-><init>()V

    throw v7
    :try_end_0
    .catch Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v0    # "byteCount":I
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException;
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 v7, 0x5

    .line 78
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 81
    .end local v1    # "e":Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException;
    :goto_1
    return v7

    .line 54
    .restart local v0    # "byteCount":I
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 56
    .local v6, "parent":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 57
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 62
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_3

    .line 64
    :try_start_3
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x46

    invoke-virtual {p0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Lcom/jiliguala/niuwa/common/util/BitmapUtils$NotEnoughSpaceException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :cond_3
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 81
    const/4 v7, 0x1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 70
    .end local v0    # "byteCount":I
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "parent":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    const/4 v7, 0x2

    .line 78
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 74
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    :goto_3
    :try_start_5
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    const/4 v7, 0x3

    .line 78
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v2    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    :goto_4
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 79
    throw v7

    .line 78
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "byteCount":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "parent":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 73
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 70
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 67
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;I)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "destSize"    # I

    .prologue
    .line 24
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 26
    .local v1, "size":I
    if-le v1, p2, :cond_1

    .line 28
    const/4 v2, 0x0

    invoke-static {p0, p2, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Landroid/graphics/Bitmap;)Z

    .line 32
    :cond_0
    move-object p0, v0

    .line 36
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "size":I
    :cond_1
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static a(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    const/4 p0, 0x0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 96
    .local v2, "size":[I
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    .line 101
    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
