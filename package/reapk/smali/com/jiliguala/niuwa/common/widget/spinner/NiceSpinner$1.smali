.class Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/d;->c()V

    .line 64
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "selected"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;I)I

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b:Lcom/jiliguala/niuwa/common/a/k$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    .line 53
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->b(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/spinner/d;->a(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a:Lcom/jiliguala/niuwa/common/a/k;

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->d(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner$1;->a:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->c(Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;)Lcom/jiliguala/niuwa/common/widget/spinner/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/spinner/d;->d()V

    .line 75
    :cond_1
    return-void
.end method
