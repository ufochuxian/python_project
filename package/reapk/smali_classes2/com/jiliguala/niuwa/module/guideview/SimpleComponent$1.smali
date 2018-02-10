.class Lcom/jiliguala/niuwa/module/guideview/SimpleComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;->getView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/guideview/SimpleComponent$1;->a:Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f15\u5bfc\u5c42\u88ab\u70b9\u51fb\u4e86"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method
