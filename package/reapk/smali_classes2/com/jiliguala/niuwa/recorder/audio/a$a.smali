.class Lcom/jiliguala/niuwa/recorder/audio/a$a;
.super Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/recorder/audio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/logic/image/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/recorder/audio/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/recorder/audio/a;)V
    .locals 1
    .param p1, "mAudioRecorder"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;-><init>()V

    .line 461
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    .line 462
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 482
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 483
    .local v1, "rawFilePath":Ljava/lang/String;
    aget-object v0, p1, v3

    .line 486
    .local v0, "encodeFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->i(Lcom/jiliguala/niuwa/recorder/audio/a;)Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->i(Lcom/jiliguala/niuwa/recorder/audio/a;)Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;->encodeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/recorder/audio/a$a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a(Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->h(Lcom/jiliguala/niuwa/recorder/audio/a;)Lcom/jiliguala/niuwa/recorder/audio/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/recorder/audio/d;->b()V

    .line 478
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 456
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/recorder/audio/a$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 466
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->d()V

    .line 467
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->h(Lcom/jiliguala/niuwa/recorder/audio/a;)Lcom/jiliguala/niuwa/recorder/audio/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/recorder/audio/d;->a()V

    .line 470
    :cond_0
    return-void
.end method
