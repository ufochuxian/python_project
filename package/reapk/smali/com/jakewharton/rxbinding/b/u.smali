.class final Lcom/jakewharton/rxbinding/b/u;
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
        "Lcom/jakewharton/rxbinding/b/t;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/widget/RatingBar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RatingBar;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/u;->a:Landroid/widget/RatingBar;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lcom/jakewharton/rxbinding/b/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/t;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/b/u$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/u$1;-><init>(Lcom/jakewharton/rxbinding/b/u;Lrx/l;)V

    .line 28
    .local v0, "listener":Landroid/widget/RatingBar$OnRatingBarChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/u;->a:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 30
    new-instance v1, Lcom/jakewharton/rxbinding/b/u$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/u$2;-><init>(Lcom/jakewharton/rxbinding/b/u;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 37
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/u;->a:Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/u;->a:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jakewharton/rxbinding/b/t;->a(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding/b/t;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/u;->a(Lrx/l;)V

    return-void
.end method
