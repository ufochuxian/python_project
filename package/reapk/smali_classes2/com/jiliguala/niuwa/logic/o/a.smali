.class public Lcom/jiliguala/niuwa/logic/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/media/SoundPool;

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/o/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/o/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->c:Ljava/lang/ref/WeakReference;

    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/o/a;->a(Landroid/content/Context;)V

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sound Pool initialize error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    .line 33
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 34
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->e:F

    .line 35
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->f:F

    .line 36
    iget v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->e:F

    iget v2, p0, Lcom/jiliguala/niuwa/logic/o/a;->f:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->g:F

    .line 39
    :try_start_0
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .param p1, "soundResId"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v0, -0x1

    .line 49
    .local v0, "soundID":I
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 55
    .end local v0    # "soundID":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 50
    .restart local v0    # "soundID":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    .line 59
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/o/a;->d:Landroid/media/SoundPool;

    iget v2, p0, Lcom/jiliguala/niuwa/logic/o/a;->g:F

    iget v3, p0, Lcom/jiliguala/niuwa/logic/o/a;->g:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
