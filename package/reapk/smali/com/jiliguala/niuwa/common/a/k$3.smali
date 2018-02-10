.class Lcom/jiliguala/niuwa/common/a/k$3;
.super Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;
.source "SourceFile"


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
    .line 220
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$3;->a:Lcom/jiliguala/niuwa/common/a/k;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .param p1, "selectedIndex"    # I
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$3;->a:Lcom/jiliguala/niuwa/common/a/k;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k;I)I

    .line 224
    return-void
.end method
