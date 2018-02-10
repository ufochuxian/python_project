.class final Lcom/bigkoo/pickerview/lib/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;)V
    .locals 0
    .param p1, "loopview"    # Lcom/bigkoo/pickerview/lib/WheelView;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/d;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/d;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->c:Lcom/bigkoo/pickerview/b/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/d;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bigkoo/pickerview/b/b;->a(I)V

    .line 13
    return-void
.end method
