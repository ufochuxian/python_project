.class Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->doScaleBtnBg(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$2;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$2;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$2;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->access$000(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->access$100(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 104
    return-void
.end method
