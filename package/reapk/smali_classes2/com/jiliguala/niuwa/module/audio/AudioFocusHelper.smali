.class public Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static INSTANCE:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;


# instance fields
.field mAM:Landroid/media/AudioManager;

.field mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->INSTANCE:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->INSTANCE:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    return-object v0
.end method


# virtual methods
.method public abandonFocus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    .line 33
    return-void
.end method

.method public lowerVolume()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 87
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 66
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/MusicFocusable;->onLostAudioFocus(Z)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/MusicFocusable;->onGainedAudioFocus()V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/MusicFocusable;->onLostAudioFocus(Z)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public raiseVolume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 83
    return-void
.end method

.method public requestFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V
    .locals 1
    .param p1, "focusable"    # Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    if-eq v0, p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->mFocusable:Lcom/jiliguala/niuwa/module/audio/MusicFocusable;

    .line 39
    :cond_0
    return-void
.end method
