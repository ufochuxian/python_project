.class Lcom/ut/mini/d/e$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/d/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ut/mini/d/e;


# direct methods
.method constructor <init>(Lcom/ut/mini/d/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ut/mini/d/e$2;->a:Lcom/ut/mini/d/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ut/mini/d/e$a;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ut/mini/d/e$a;

    .line 65
    invoke-virtual {v0}, Lcom/ut/mini/d/e$a;->c()Lcom/ut/mini/d/b;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/ut/mini/d/e$a;->a()I

    move-result v2

    .line 67
    invoke-virtual {v0}, Lcom/ut/mini/d/e$a;->b()Ljava/lang/Object;

    move-result-object v0

    .line 68
    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    instance-of v3, v0, Lcom/ut/mini/d/f;

    if-eqz v3, :cond_1

    .line 71
    check-cast v0, Lcom/ut/mini/d/f;

    .line 72
    invoke-virtual {v0, v1}, Lcom/ut/mini/d/f;->a(Lcom/ut/mini/d/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Lcom/ut/mini/d/f;->b(Lcom/ut/mini/d/b;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-virtual {v1, v2, v0}, Lcom/ut/mini/d/b;->a(ILjava/lang/Object;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/ut/mini/d/b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
