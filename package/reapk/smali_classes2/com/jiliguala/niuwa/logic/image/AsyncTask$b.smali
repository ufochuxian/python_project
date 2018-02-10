.class Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 596
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;

    .line 597
    .local v0, "result":Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 600
    :pswitch_0
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->c(Lcom/jiliguala/niuwa/logic/image/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 603
    :pswitch_1
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
