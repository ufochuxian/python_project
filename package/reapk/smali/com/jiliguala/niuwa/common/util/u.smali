.class public Lcom/jiliguala/niuwa/common/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v5, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v5, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 22
    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "UTF-8"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 24
    .local v0, "writer":Lcom/google/zxing/MultiFormatWriter;
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    .line 26
    .local v7, "result":Lcom/google/zxing/common/BitMatrix;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 28
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    if-ge v9, p2, :cond_2

    .line 29
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, p1, :cond_1

    .line 30
    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    :goto_2
    invoke-virtual {v6, v8, v9, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 29
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, -0x1

    goto :goto_2

    .line 28
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 34
    .end local v8    # "x":I
    :cond_2
    return-object v6
.end method
