.class public Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final ALL_MODE:I = 0x300

.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"

.field public static final BARCODE_MODE:I = 0x100

.field public static final QRCODE_MODE:I = 0x200


# instance fields
.field private final activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;I)V
    .locals 3
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;
    .param p2, "decodeMode"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    .line 53
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 55
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 61
    sparse-switch p2, :sswitch_data_0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void

    .line 63
    :sswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeFormatManager;->getBarCodeFormats()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 67
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeFormatManager;->getQrCodeFormats()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 71
    :sswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeFormatManager;->getBarCodeFormats()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-static {}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeFormatManager;->getQrCodeFormats()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x300 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 94
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;-><init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->handler:Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 97
    return-void
.end method
