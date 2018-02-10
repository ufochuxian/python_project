.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$6;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$6;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$6;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$500(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    .line 416
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 412
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$6;->a(Ljava/lang/Void;)V

    return-void
.end method
