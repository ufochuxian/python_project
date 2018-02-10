.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->bindBannerView(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;->a:Landroid/view/View;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$400(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Landroid/view/View;I)V

    .line 399
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 395
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;->a(Ljava/lang/Void;)V

    return-void
.end method
