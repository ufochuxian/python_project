.class Lu/aly/dh$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lu/aly/dh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu/aly/dh;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lu/aly/dh$a;->a:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/dh$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    const/16 v0, 0x30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/dl;->c(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lu/aly/dh$a;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    invoke-static {}, Lu/aly/dh;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/dh;->a(Landroid/content/Context;)Lu/aly/dh;

    move-result-object v0

    invoke-static {v0}, Lu/aly/dh;->c(Lu/aly/dh;)V

    goto :goto_0

    .line 88
    :pswitch_1
    const/16 v0, 0x31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/dl;->d(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lu/aly/dh$a;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    invoke-static {}, Lu/aly/dh;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/dh;->a(Landroid/content/Context;)Lu/aly/dh;

    move-result-object v0

    invoke-static {v0}, Lu/aly/dh;->d(Lu/aly/dh;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
