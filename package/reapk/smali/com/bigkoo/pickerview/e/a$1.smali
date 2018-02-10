.class Lcom/bigkoo/pickerview/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/e/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bigkoo/pickerview/e/a;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/e/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bigkoo/pickerview/e/a;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a$1;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a$1;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/a;->a(Lcom/bigkoo/pickerview/e/a;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/e/a$1$1;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/e/a$1$1;-><init>(Lcom/bigkoo/pickerview/e/a$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 104
    return-void
.end method
