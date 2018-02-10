.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 210
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Beginner\u2018s Guide View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "PREFS_BABY_HOME_GUIDE_MASK"

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "PREFS_PARENT_HOME_GUIDE_MASK"

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "PREFS_HAS_COMPLETE_SHOW_GUIDE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method
