.class public Lcom/android/volley/toolbox/l;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0x3e8

.field private static final b:I = 0x2

.field private static final c:F = 2.0f

.field private static final d:Ljava/lang/Object;


# instance fields
.field private final e:Lcom/android/volley/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/k$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Bitmap$Config;

.field private final g:I

.field private final h:I

.field private i:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/k$b;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/k$a;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p6, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    .local p2, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Landroid/graphics/Bitmap;>;"
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/android/volley/k$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/k$a;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/k$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/k$a;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p6, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p7, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 81
    new-instance v0, Lcom/android/volley/d;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/d;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/l;->setRetryPolicy(Lcom/android/volley/m;)Lcom/android/volley/Request;

    .line 82
    iput-object p2, p0, Lcom/android/volley/toolbox/l;->e:Lcom/android/volley/k$b;

    .line 83
    iput-object p6, p0, Lcom/android/volley/toolbox/l;->f:Landroid/graphics/Bitmap$Config;

    .line 84
    iput p3, p0, Lcom/android/volley/toolbox/l;->g:I

    .line 85
    iput p4, p0, Lcom/android/volley/toolbox/l;->h:I

    .line 86
    iput-object p5, p0, Lcom/android/volley/toolbox/l;->i:Landroid/widget/ImageView$ScaleType;

    .line 87
    return-void
.end method

.method static a(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 165
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 166
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 167
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 168
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    .local v2, "n":F
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    .line 170
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    .line 173
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 8
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 115
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 151
    .end local p2    # "actualPrimary":I
    :cond_0
    :goto_0
    return p2

    .line 120
    .restart local p2    # "actualPrimary":I
    :cond_1
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_2

    .line 121
    if-eqz p0, :cond_0

    move p2, p0

    .line 124
    goto :goto_0

    .line 128
    :cond_2
    if-nez p0, :cond_3

    .line 129
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 130
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int p2, v4

    goto :goto_0

    .line 133
    .end local v0    # "ratio":D
    :cond_3
    if-nez p1, :cond_4

    move p2, p0

    .line 134
    goto :goto_0

    .line 137
    :cond_4
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 138
    .restart local v0    # "ratio":D
    move v2, p0

    .line 141
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_6

    .line 142
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5

    .line 143
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_5
    move p2, v2

    .line 145
    goto :goto_0

    .line 148
    :cond_6
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    .line 149
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_7
    move p2, v2

    .line 151
    goto :goto_0
.end method

.method private a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 13
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 198
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 199
    .local v3, "data":[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 201
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/volley/toolbox/l;->g:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/volley/toolbox/l;->h:I

    if-nez v8, :cond_0

    .line 202
    iget-object v8, p0, Lcom/android/volley/toolbox/l;->f:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 203
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 231
    :goto_0
    if-nez v2, :cond_3

    .line 232
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v8}, Lcom/android/volley/k;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;

    move-result-object v8

    .line 234
    :goto_1
    return-object v8

    .line 206
    :cond_0
    iput-boolean v12, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 207
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 208
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 209
    .local v1, "actualWidth":I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 212
    .local v0, "actualHeight":I
    iget v8, p0, Lcom/android/volley/toolbox/l;->g:I

    iget v9, p0, Lcom/android/volley/toolbox/l;->h:I

    iget-object v10, p0, Lcom/android/volley/toolbox/l;->i:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8, v9, v1, v0, v10}, Lcom/android/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 213
    .local v6, "desiredWidth":I
    iget v8, p0, Lcom/android/volley/toolbox/l;->h:I

    iget v9, p0, Lcom/android/volley/toolbox/l;->g:I

    iget-object v10, p0, Lcom/android/volley/toolbox/l;->i:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 216
    .local v5, "desiredHeight":I
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 219
    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/l;->a(IIII)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 220
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 223
    .local v7, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v8, v6, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 224
    :cond_1
    invoke-static {v7, v6, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 225
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 227
    :cond_2
    move-object v2, v7

    goto :goto_0

    .line 234
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    .end local v5    # "desiredHeight":I
    .end local v6    # "desiredWidth":I
    .end local v7    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/b$a;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/volley/k;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/k;

    move-result-object v8

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/volley/toolbox/l;->e:Lcom/android/volley/k$b;

    invoke-interface {v0, p1}, Lcom/android/volley/k$b;->onResponse(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/l;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    sget-object v2, Lcom/android/volley/toolbox/l;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/l;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 189
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/l;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/volley/n;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/k;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
