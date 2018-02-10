.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$800(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->bid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 528
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 517
    return-void
.end method
