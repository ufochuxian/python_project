.class Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/task/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 380
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;

    .line 381
    .local v0, "result":Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b$a<*>;"
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 384
    :pswitch_0
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
