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
    .line 212
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 216
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "MCVIEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 227
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

    .line 228
    const-string v0, "PREFS_BABY_HOME_GUIDE_MASK"

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
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

    .line 230
    const-string v0, "PREFS_PARENT_HOME_GUIDE_MASK"

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "PREFS_HAS_COMPLETE_SHOW_GUIDE"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "MCVIEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 248
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V

    .line 250
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "MCVIEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2019s Guide Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
