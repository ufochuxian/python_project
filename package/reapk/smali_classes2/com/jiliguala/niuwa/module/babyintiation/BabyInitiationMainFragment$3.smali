.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent$OnClickListener;


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
    .line 515
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/blog/www/guideview/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/blog/www/guideview/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blog/www/guideview/f;->a()V

    .line 521
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Guavatar Guide Complete"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->access$400(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V

    .line 523
    return-void
.end method
