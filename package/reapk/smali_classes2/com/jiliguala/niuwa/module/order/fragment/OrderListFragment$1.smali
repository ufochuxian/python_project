.class Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->initView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$1;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$1;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->access$000(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V

    .line 83
    return-void
.end method
