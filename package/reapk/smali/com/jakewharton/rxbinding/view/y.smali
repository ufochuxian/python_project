.class final Lcom/jakewharton/rxbinding/view/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lrx/c/p;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/MotionEvent;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/y;->a:Landroid/view/View;

    .line 19
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/y;->b:Lrx/c/p;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Landroid/view/MotionEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/view/y$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/y$1;-><init>(Lcom/jakewharton/rxbinding/view/y;Lrx/l;)V

    .line 36
    .local v0, "listener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/y;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/view/y$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/y$2;-><init>(Lcom/jakewharton/rxbinding/view/y;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 43
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/y;->a(Lrx/l;)V

    return-void
.end method
