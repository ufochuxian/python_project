.class final Lcom/jakewharton/rxbinding/b/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/Toolbar;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/bf;->a:Landroid/widget/Toolbar;

    .line 19
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/b/bf$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/bf$1;-><init>(Lcom/jakewharton/rxbinding/b/bf;Lrx/l;)V

    .line 31
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/bf;->a:Landroid/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v1, Lcom/jakewharton/rxbinding/b/bf$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/bf$2;-><init>(Lcom/jakewharton/rxbinding/b/bf;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 38
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/bf;->a(Lrx/l;)V

    return-void
.end method
