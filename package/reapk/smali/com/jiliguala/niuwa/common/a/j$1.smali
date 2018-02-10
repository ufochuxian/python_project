.class Lcom/jiliguala/niuwa/common/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/a/j;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/a/j;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/a/j;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/a/j;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/j$1;->a:Lcom/jiliguala/niuwa/common/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j$1;->a:Lcom/jiliguala/niuwa/common/a/j;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/common/a/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j$1;->a:Lcom/jiliguala/niuwa/common/a/j;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/common/a/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j$1;->a:Lcom/jiliguala/niuwa/common/a/j;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/common/a/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/i;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/a/i;->a()V

    .line 109
    :cond_0
    return-void
.end method
