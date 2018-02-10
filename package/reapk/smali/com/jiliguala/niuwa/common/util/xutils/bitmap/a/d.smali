.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 174
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 175
    .local v0, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 176
    .local v4, "width":I
    const/4 v1, 0x1

    .line 178
    .local v1, "inSampleSize":I
    if-gt v4, p1, :cond_0

    if-le v0, p2, :cond_2

    .line 179
    :cond_0
    if-le v4, v0, :cond_1

    .line 180
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 185
    :goto_0
    mul-int v5, v4, v0

    int-to-float v3, v5

    .line 187
    .local v3, "totalPixels":F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 189
    .local v2, "maxTotalPixels":F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v3, v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .end local v2    # "maxTotalPixels":F
    .end local v3    # "totalPixels":F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 193
    :cond_2
    return v1
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 118
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 126
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/res/Resources;ILcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "maxSize"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 34
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 35
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 39
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    if-eqz p3, :cond_0

    .line 43
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    :try_start_1
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 49
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v2, 0x0

    .line 146
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 147
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 154
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    monitor-exit v3

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a(Ljava/io/FileDescriptor;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "maxSize"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v2, 0x0

    .line 76
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 81
    const/4 v4, 0x0

    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    if-eqz p2, :cond_0

    .line 85
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 91
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    monitor-exit v3

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 133
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 140
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "maxSize"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 55
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 56
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 60
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    if-eqz p2, :cond_0

    .line 64
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    :try_start_1
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 70
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 160
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 161
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 162
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const/4 v2, 0x0

    :try_start_1
    array-length v4, p0

    invoke-static {p0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 168
    :goto_0
    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static a([BLcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "maxSize"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 97
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 98
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 102
    const/4 v2, 0x0

    array-length v4, p0

    invoke-static {p0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/c;->b()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 104
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    if-eqz p2, :cond_0

    .line 106
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    array-length v4, p0

    invoke-static {p0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 112
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
