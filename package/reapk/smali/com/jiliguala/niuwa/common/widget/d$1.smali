.class Lcom/jiliguala/niuwa/common/widget/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/d;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/d;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/d;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/d$1;->a:Lcom/jiliguala/niuwa/common/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d$1;->a:Lcom/jiliguala/niuwa/common/widget/d;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/d;->a(Lcom/jiliguala/niuwa/common/widget/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d$1;->a:Lcom/jiliguala/niuwa/common/widget/d;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/d;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/d$1;->a:Lcom/jiliguala/niuwa/common/widget/d;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/d;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 117
    :cond_0
    return-void
.end method
