.class Lcom/jiliguala/niuwa/common/a/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/a/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/a/k;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/a/k;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/a/k;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$2;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$2;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/k;->d(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k$2;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/k;->c(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/k$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setSelection(I)V

    .line 218
    return-void
.end method
