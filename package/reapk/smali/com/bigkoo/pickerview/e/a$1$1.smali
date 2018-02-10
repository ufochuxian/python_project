.class Lcom/bigkoo/pickerview/e/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/e/a$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bigkoo/pickerview/e/a$1;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/e/a$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/bigkoo/pickerview/e/a$1;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a$1$1;->a:Lcom/bigkoo/pickerview/e/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a$1$1;->a:Lcom/bigkoo/pickerview/e/a$1;

    iget-object v0, v0, Lcom/bigkoo/pickerview/e/a$1;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/e/a;->g()V

    .line 112
    return-void
.end method
