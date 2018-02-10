.class Lcom/squareup/picasso/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/i;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/i;

    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 469
    iput-object p2, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    .line 470
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 473
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 523
    :pswitch_0
    sget-object v4, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v5, Lcom/squareup/picasso/i$a$1;

    invoke-direct {v5, p0, p1}, Lcom/squareup/picasso/i$a$1;-><init>(Lcom/squareup/picasso/i$a;Landroid/os/Message;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    :goto_0
    return-void

    .line 475
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/a;

    .line 476
    .local v0, "action":Lcom/squareup/picasso/a;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/a;)V

    goto :goto_0

    .line 480
    .end local v0    # "action":Lcom/squareup/picasso/a;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/a;

    .line 481
    .restart local v0    # "action":Lcom/squareup/picasso/a;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/i;->d(Lcom/squareup/picasso/a;)V

    goto :goto_0

    .line 485
    .end local v0    # "action":Lcom/squareup/picasso/a;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    .local v3, "tag":Ljava/lang/Object;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/i;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    .end local v3    # "tag":Ljava/lang/Object;
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    .restart local v3    # "tag":Ljava/lang/Object;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/i;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 495
    .end local v3    # "tag":Ljava/lang/Object;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/c;

    .line 496
    .local v1, "hunter":Lcom/squareup/picasso/c;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/c;)V

    goto :goto_0

    .line 500
    .end local v1    # "hunter":Lcom/squareup/picasso/c;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/c;

    .line 501
    .restart local v1    # "hunter":Lcom/squareup/picasso/c;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/i;->d(Lcom/squareup/picasso/c;)V

    goto :goto_0

    .line 505
    .end local v1    # "hunter":Lcom/squareup/picasso/c;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/c;

    .line 506
    .restart local v1    # "hunter":Lcom/squareup/picasso/c;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v1, v5}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    goto :goto_0

    .line 510
    .end local v1    # "hunter":Lcom/squareup/picasso/c;
    :pswitch_8
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4}, Lcom/squareup/picasso/i;->b()V

    goto :goto_0

    .line 514
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 515
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v4, v2}, Lcom/squareup/picasso/i;->b(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 519
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :pswitch_a
    iget-object v6, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_0

    :goto_1
    invoke-virtual {v6, v4}, Lcom/squareup/picasso/i;->b(Z)V

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
