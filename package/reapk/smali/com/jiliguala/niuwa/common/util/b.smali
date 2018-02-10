.class public Lcom/jiliguala/niuwa/common/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0x0

.field private static final f:Ljava/lang/String; = "AudioPermissionCheckUt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/jiliguala/niuwa/common/util/b;->a:I

    .line 21
    const v0, 0xac44

    sput v0, Lcom/jiliguala/niuwa/common/util/b;->b:I

    .line 23
    const/16 v0, 0xc

    sput v0, Lcom/jiliguala/niuwa/common/util/b;->c:I

    .line 25
    const/4 v0, 0x2

    sput v0, Lcom/jiliguala/niuwa/common/util/b;->d:I

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/jiliguala/niuwa/common/util/b;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x400

    const/4 v10, 0x0

    .line 33
    sput v10, Lcom/jiliguala/niuwa/common/util/b;->e:I

    .line 34
    sget v1, Lcom/jiliguala/niuwa/common/util/b;->b:I

    sget v2, Lcom/jiliguala/niuwa/common/util/b;->c:I

    sget v3, Lcom/jiliguala/niuwa/common/util/b;->d:I

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    sput v1, Lcom/jiliguala/niuwa/common/util/b;->e:I

    .line 36
    const/4 v6, 0x0

    .line 38
    .local v6, "audioRecord":Landroid/media/AudioRecord;
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    sget v1, Lcom/jiliguala/niuwa/common/util/b;->a:I

    sget v2, Lcom/jiliguala/niuwa/common/util/b;->b:I

    sget v3, Lcom/jiliguala/niuwa/common/util/b;->c:I

    sget v4, Lcom/jiliguala/niuwa/common/util/b;->d:I

    sget v5, Lcom/jiliguala/niuwa/common/util/b;->e:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move v1, v10

    .line 69
    :goto_1
    return v1

    .line 40
    .end local v0    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v6    # "audioRecord":Landroid/media/AudioRecord;
    :catch_0
    move-exception v8

    .line 41
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "audioRecord":Landroid/media/AudioRecord;
    move v1, v10

    .line 42
    goto :goto_1

    .line 48
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 49
    .local v8, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-array v7, v11, [B

    .line 60
    .local v7, "bytes":[B
    invoke-virtual {v0, v7, v10, v11}, Landroid/media/AudioRecord;->read([BII)I

    move-result v9

    .line 61
    .local v9, "readSize":I
    const/4 v1, -0x3

    if-eq v9, v1, :cond_1

    if-gtz v9, :cond_2

    :cond_1
    move v1, v10

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 66
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 67
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x1

    goto :goto_1
.end method
