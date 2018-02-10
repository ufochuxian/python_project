.class Lcom/jiliguala/niuwa/recorder/audio/a$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/recorder/audio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/recorder/audio/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 399
    const-class v0, Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/recorder/audio/a;)V
    .locals 2
    .param p1, "audioRecorder"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 406
    const-string v0, "FSC_THREAD"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 401
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->c:J

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->d:I

    .line 407
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    .line 408
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x1f4

    const/16 v6, 0x1000

    .line 424
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 425
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 452
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 428
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->e(Lcom/jiliguala/niuwa/recorder/audio/a;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->e(Lcom/jiliguala/niuwa/recorder/audio/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->e(Lcom/jiliguala/niuwa/recorder/audio/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 431
    .local v0, "fileSize":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->c:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 433
    iput-wide v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->c:J

    .line 434
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->f(Lcom/jiliguala/niuwa/recorder/audio/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 449
    .end local v0    # "fileSize":J
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 436
    .restart local v0    # "fileSize":J
    :cond_2
    iget-wide v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->c:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_4

    .line 437
    iget v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->d:I

    .line 438
    iget v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->d:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 439
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->g(Lcom/jiliguala/niuwa/recorder/audio/a;)V

    goto :goto_1

    .line 441
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->f(Lcom/jiliguala/niuwa/recorder/audio/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->f(Lcom/jiliguala/niuwa/recorder/audio/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 418
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->c:J

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$b;->d:I

    .line 420
    return-void
.end method
