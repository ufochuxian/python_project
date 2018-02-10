.class public Lcom/jiliguala/niuwa/common/util/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/common/util/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/e/c;->a:Ljava/lang/String;

    .line 22
    const/16 v0, 0x32

    sput v0, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 33
    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/common/util/e/c;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 45
    :try_start_0
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 46
    .local v8, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v4, "utf-8"

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    .line 49
    .local v17, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v3, p1, p1

    new-array v10, v3, [I

    .line 50
    .local v10, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 51
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 52
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/high16 v4, -0x1000000

    aput v4, v10, v3

    .line 51
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 55
    :cond_0
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/4 v4, -0x1

    aput v4, v10, v3
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 63
    .end local v8    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_0
    move-exception v18

    .line 64
    .local v18, "e":Lcom/google/zxing/WriterException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 65
    const/4 v9, 0x0

    .end local v18    # "e":Lcom/google/zxing/WriterException;
    :goto_3
    return-object v9

    .line 50
    .restart local v8    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .restart local v10    # "pixels":[I
    .restart local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 60
    .end local v19    # "x":I
    :cond_2
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 61
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v15, p1

    move/from16 v16, p1

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 33
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "logBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    :try_start_0
    div-int/lit8 v3, p1, 0xa

    sput v3, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    .line 91
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 92
    .local v8, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v4, "utf-8"

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v23

    .line 100
    .local v23, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v30

    .line 101
    .local v30, "width":I
    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v27

    .line 102
    .local v27, "height":I
    div-int/lit8 v26, v30, 0x2

    .line 103
    .local v26, "halfW":I
    div-int/lit8 v25, v27, 0x2

    .line 105
    .local v25, "halfH":I
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v14, "m":Landroid/graphics/Matrix;
    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v28, v3, v4

    .line 107
    .local v28, "sx":F
    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v29, v3, v4

    .line 108
    .local v29, "sy":F
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 111
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 113
    mul-int v3, p1, p1

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 114
    .local v16, "pixels":[I
    const/16 v32, 0x0

    .local v32, "y":I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 115
    const/16 v31, 0x0

    .local v31, "x":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 116
    sget v3, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    sub-int v3, v26, v3

    move/from16 v0, v31

    if-le v0, v3, :cond_0

    sget v3, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    add-int v3, v3, v26

    move/from16 v0, v31

    if-ge v0, v3, :cond_0

    sget v3, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    sub-int v3, v25, v3

    move/from16 v0, v32

    if-le v0, v3, :cond_0

    sget v3, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    add-int v3, v3, v25

    move/from16 v0, v32

    if-ge v0, v3, :cond_0

    .line 119
    mul-int v3, v32, v30

    add-int v3, v3, v31

    sub-int v4, v31, v26

    sget v5, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    add-int/2addr v4, v5

    sub-int v5, v32, v25

    sget v6, Lcom/jiliguala/niuwa/common/util/e/c;->b:I

    add-int/2addr v5, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    aput v4, v16, v3

    .line 115
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 121
    :cond_0
    move-object/from16 v0, v23

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    mul-int v3, v32, p1

    add-int v3, v3, v31

    const/high16 v4, -0x1000000

    aput v4, v16, v3

    goto :goto_2

    .line 132
    .end local v8    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v14    # "m":Landroid/graphics/Matrix;
    .end local v16    # "pixels":[I
    .end local v23    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v25    # "halfH":I
    .end local v26    # "halfW":I
    .end local v27    # "height":I
    .end local v28    # "sx":F
    .end local v29    # "sy":F
    .end local v30    # "width":I
    .end local v31    # "x":I
    .end local v32    # "y":I
    :catch_0
    move-exception v24

    .line 134
    .local v24, "e":Lcom/google/zxing/WriterException;
    const/4 v15, 0x0

    .end local v24    # "e":Lcom/google/zxing/WriterException;
    :goto_3
    return-object v15

    .line 124
    .restart local v8    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .restart local v14    # "m":Landroid/graphics/Matrix;
    .restart local v16    # "pixels":[I
    .restart local v23    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v25    # "halfH":I
    .restart local v26    # "halfW":I
    .restart local v27    # "height":I
    .restart local v28    # "sx":F
    .restart local v29    # "sy":F
    .restart local v30    # "width":I
    .restart local v31    # "x":I
    .restart local v32    # "y":I
    :cond_1
    mul-int v3, v32, p1

    add-int v3, v3, v31

    const/4 v4, -0x1

    aput v4, v16, v3

    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 129
    .end local v31    # "x":I
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 130
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, p1

    move/from16 v21, p1

    move/from16 v22, p1

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    const/16 v0, 0x1f4

    invoke-static {p0, v0, p1}, Lcom/jiliguala/niuwa/common/util/e/c;->a(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
