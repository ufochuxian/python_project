.class Lcom/jiliguala/niuwa/common/a/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/a/k;
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
    .line 68
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 73
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/a/k$a;->a()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/k;->a()V

    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k;)Lcom/jiliguala/niuwa/common/a/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/k;->b(Lcom/jiliguala/niuwa/common/a/k;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$a;->a(I)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$1;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/k;->a()V

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method
