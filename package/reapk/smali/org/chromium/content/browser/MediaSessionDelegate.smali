.class public Lorg/chromium/content/browser/MediaSessionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field public static final DEFAULT_VOLUME_MULTIPLIER:D = 1.0

.field public static final DUCKING_VOLUME_MULTIPLIER:D = 0.20000000298023224

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFocusType:I

.field private mIsDucking:Z

.field private mNativeMediaSessionDelegateAndroid:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeMediaSessionDelegateAndroid"    # J

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    .line 42
    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mContext:Landroid/content/Context;

    .line 43
    iput-wide p2, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    .line 44
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 68
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 69
    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/content/browser/MediaSessionDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeMediaSessionDelegateAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/chromium/content/browser/MediaSessionDelegate;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/MediaSessionDelegate;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private native nativeOnResume(J)V
.end method

.method private native nativeOnSetVolumeMultiplier(JD)V
.end method

.method private native nativeOnSuspend(JZ)V
.end method

.method private native nativeRecordSessionDuck(J)V
.end method

.method private requestAudioFocus(Z)Z
    .locals 1
    .param p1, "transientFocus"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 60
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mFocusType:I

    .line 62
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSessionDelegate;->requestAudioFocusInternal()Z

    move-result v0

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestAudioFocusInternal()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v3, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 74
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v3, 0x3

    iget v4, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mFocusType:I

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 75
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private tearDown()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSessionDelegate;->abandonAudioFocus()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    .line 56
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6
    .param p1, "focusChange"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 82
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 106
    :pswitch_0
    const-string v0, "MediaSession"

    const-string v1, "onAudioFocusChange called with unexpected value %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    if-eqz v0, :cond_1

    .line 85
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSetVolumeMultiplier(JD)V

    .line 87
    iput-boolean v4, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    goto :goto_0

    .line 89
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnResume(J)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1, v5}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSuspend(JZ)V

    goto :goto_0

    .line 96
    :pswitch_3
    iput-boolean v5, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mIsDucking:Z

    .line 97
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeRecordSessionDuck(J)V

    .line 98
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSetVolumeMultiplier(JD)V

    goto :goto_0

    .line 102
    :pswitch_4
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSessionDelegate;->abandonAudioFocus()V

    .line 103
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSessionDelegate;->mNativeMediaSessionDelegateAndroid:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/MediaSessionDelegate;->nativeOnSuspend(JZ)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
