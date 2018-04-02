.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuavatarGuideView()V
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
    .line 490
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 493
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Guavatar Guide View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 495
    const-string v0, "PREFS_GUAVATAR_MASK"

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 496
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z

    .line 501
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "PREFS_SONG_GUDIE_MASK"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 506
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Guavatar Guide Exit"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 511
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Guavatar Guide Complete"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 512
    return-void
.end method
