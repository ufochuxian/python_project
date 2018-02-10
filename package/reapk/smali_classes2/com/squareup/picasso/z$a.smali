.class Lcom/squareup/picasso/z$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/z;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/z;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "stats"    # Lcom/squareup/picasso/z;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    iput-object p2, p0, Lcom/squareup/picasso/z$a;->a:Lcom/squareup/picasso/z;

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    sget-object v0, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/z$a$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/z$a$1;-><init>(Lcom/squareup/picasso/z$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/squareup/picasso/z$a;->a:Lcom/squareup/picasso/z;

    invoke-virtual {v0}, Lcom/squareup/picasso/z;->d()V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/squareup/picasso/z$a;->a:Lcom/squareup/picasso/z;

    invoke-virtual {v0}, Lcom/squareup/picasso/z;->e()V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/squareup/picasso/z$a;->a:Lcom/squareup/picasso/z;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/z;->b(J)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/squareup/picasso/z$a;->a:Lcom/squareup/picasso/z;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/z;->c(J)V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v1, p0, Lcom/squareup/picasso/z$a;->a:Lcom/squareup/picasso/z;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/z;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
