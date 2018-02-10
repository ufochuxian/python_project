.class public Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# static fields
.field private static final CUSTOM_ERROR_CODE_BASE:I = -0xc350

.field private static final DECODER_QUERY_ERROR:I = -0xc34e

.field private static final NO_SUITABLE_DECODER_ERROR:I = -0xc34f


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final diagnosticInfo:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final secureDecoderRequired:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;ZI)V
    .locals 2
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "secureDecoderRequired"    # Z
    .param p4, "errorCode"    # I

    .prologue
    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1040
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    .line 1041
    iput-boolean p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->decoderName:Ljava/lang/String;

    .line 1043
    invoke-static {p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->buildCustomDiagnosticInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 1044
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 2
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "secureDecoderRequired"    # Z
    .param p4, "decoderName"    # Ljava/lang/String;

    .prologue
    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1048
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    .line 1049
    iput-boolean p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    .line 1050
    iput-object p4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->decoderName:Ljava/lang/String;

    .line 1051
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 1052
    return-void

    .line 1051
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildCustomDiagnosticInfo(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 1063
    if-gez p0, :cond_0

    const-string v0, "neg_"

    .line 1064
    .local v0, "sign":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.android.exoplayer.MediaCodecTrackRenderer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1063
    .end local v0    # "sign":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1056
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 1057
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    .end local p0    # "cause":Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    .line 1059
    :goto_0
    return-object v0

    .restart local p0    # "cause":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
