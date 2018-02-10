.class public final Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final initializationVectorSize:I

.field public final isEncrypted:Z

.field public final keyId:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isEncrypted"    # Z
    .param p2, "initializationVectorSize"    # I
    .param p3, "keyId"    # [B

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    .line 49
    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 50
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 51
    return-void
.end method
