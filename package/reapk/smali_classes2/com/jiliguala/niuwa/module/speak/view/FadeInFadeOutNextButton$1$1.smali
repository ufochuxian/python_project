.class Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1$1;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1$1;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1$1;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;->a:Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->access$000(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->access$100(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;Landroid/view/View;)V

    .line 86
    return-void
.end method
