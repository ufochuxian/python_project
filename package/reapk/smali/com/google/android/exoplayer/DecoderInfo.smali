.class public final Lcom/google/android/exoplayer/DecoderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adaptive:Z

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adaptive"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/google/android/exoplayer/DecoderInfo;->adaptive:Z

    .line 47
    return-void
.end method
