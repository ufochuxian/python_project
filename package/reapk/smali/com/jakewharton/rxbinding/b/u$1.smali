.class Lcom/jakewharton/rxbinding/b/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/u;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/u;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/u;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/u;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/u$1;->b:Lcom/jakewharton/rxbinding/b/u;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/u$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/u$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/u$1;->a:Lrx/l;

    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding/b/t;->a(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding/b/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method
