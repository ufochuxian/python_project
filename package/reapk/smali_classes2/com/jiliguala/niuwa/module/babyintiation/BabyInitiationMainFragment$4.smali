.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

.field final synthetic b:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->b:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 919
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "URL"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Treasure Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 921
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->b:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;->b:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    .line 922
    return-void
.end method
