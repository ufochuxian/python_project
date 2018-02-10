.class Lcom/bigkoo/pickerview/e/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/e/a;
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
    .line 163
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a$2;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a$2;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/e/a;->f()V

    .line 169
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
