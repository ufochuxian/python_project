.class Landroid/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 120
    iput-object p1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->c:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->d:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->d:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->p:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/l;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void

    .line 126
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->e:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->f:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->f:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 128
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->g:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->h:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->h:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 131
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0
.end method