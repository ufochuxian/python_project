.class Lcom/jiliguala/niuwa/common/widget/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/b;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/b;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/b$1;->a:Lcom/jiliguala/niuwa/common/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b$1;->a:Lcom/jiliguala/niuwa/common/widget/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b$1;->a:Lcom/jiliguala/niuwa/common/widget/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/b$1;->a:Lcom/jiliguala/niuwa/common/widget/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/b;->dismissAllowingStateLoss()V

    .line 114
    :cond_0
    return-void
.end method
