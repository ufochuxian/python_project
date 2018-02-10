.class Lcom/jiliguala/niuwa/module/order/OrderActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/OrderActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/OrderActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/OrderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/OrderActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity$1;->a:Lcom/jiliguala/niuwa/module/order/OrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity$1;->a:Lcom/jiliguala/niuwa/module/order/OrderActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->finish()V

    .line 66
    return-void
.end method
