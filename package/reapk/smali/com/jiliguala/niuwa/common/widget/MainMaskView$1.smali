.class Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/MainMaskView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/MainMaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 51
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 52
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a(Lcom/jiliguala/niuwa/common/widget/MainMaskView;)Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/MainMaskView$1;->a:Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->a(Lcom/jiliguala/niuwa/common/widget/MainMaskView;)Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;->a()V

    .line 57
    :cond_1
    return-void
.end method
